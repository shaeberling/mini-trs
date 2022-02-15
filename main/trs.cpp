#include "trs.h"

#include <errno.h>
#include <time.h>
#include <string.h>
#include <sys/time.h>
#include <unistd.h>

#include "i2s.h"
#include "io.h"
#include "key_injector.h"
#include "trs_memory.h"
#include "trs_screen.h"
#include "web_debugger.h"
#include "z80.h"
#include <freertos/task.h>


#define CYCLES_PER_TIMER_M3 ((unsigned int) (CLOCK_MHZ_M3 * 1000000 / TIMER_HZ_M3))
#define CYCLES_PER_TIMER_M4 ((unsigned int) (CLOCK_MHZ_M4 * 1000000 / TIMER_HZ_M4))

static unsigned int cycles_per_timer = CYCLES_PER_TIMER_M3;
static unsigned int timer_hz = TIMER_HZ_M3;

int trs_model = 4;

static Z80Context z80ctx;

// Avoids the main thread from free spinning while paused.
const TickType_t paused_step_delay_ = 50 / portTICK_PERIOD_MS;
static bool debugger_pause_ = false;
static int debugger_steps_ = 0;
static TRX_OnPokeMemory trx_on_poke_memory_ = NULL;
static void* trx_clazz_ = NULL;
static KeyInjector* key_injector_ = NULL;

void on_trx_control_callback(TRX_CONTROL_TYPE type) {
	if (type == TRX_CONTROL_TYPE_STEP) debugger_steps_++;
	else if (type == TRX_CONTROL_TYPE_CONTINUE) debugger_pause_ = false;
	else if (type == TRX_CONTROL_TYPE_HALT) {
    debugger_steps_ = 0;
    debugger_pause_ = true;
  }
	// else if (type == TRX_CONTROL_TYPE_SOFT_RESET) soft_reset();
	// else if (type == TRX_CONTROL_TYPE_HARD_RESET) hard_reset();
}

void on_trx_get_state_update(TRX_SystemState* state) {
  state->registers.pc = z80ctx.PC;
  state->registers.sp = z80ctx.R1.wr.SP;
  state->registers.af = z80ctx.R1.wr.AF;
  state->registers.bc = z80ctx.R1.wr.BC;
  state->registers.de = z80ctx.R1.wr.DE;
  state->registers.hl = z80ctx.R1.wr.HL;
  state->registers.af_prime = z80ctx.R2.wr.AF;
  state->registers.bc_prime = z80ctx.R2.wr.BC;
  state->registers.de_prime = z80ctx.R2.wr.DE;
  state->registers.hl_prime = z80ctx.R2.wr.HL;
  state->registers.ix = z80ctx.R1.wr.IX;
  state->registers.iy = z80ctx.R1.wr.IY;
  state->registers.i = z80ctx.I;
  state->registers.r7 = 0;  // TODO
  state->registers.r = z80ctx.R;
  state->registers.t_count = 0;  // TODO
  state->registers.clock_mhz = 0;  // TODO
  state->registers.iff1 = z80ctx.IFF1;
  state->registers.iff2 = z80ctx.IFF2;
  // TODO: Is this the same thing?
  state->registers.interrupt_mode = z80ctx.IM;
}

void on_trx_add_breakpoint(int bp_id, uint16_t addr, TRX_BREAK_TYPE type) {
  // int flag = BREAKPOINT_FLAG;  // TRX_BREAK_PC
  // if (type == TRX_BREAK_MEMORY) flag = WATCHPOINT_FLAG;
  // set_trap(addr, flag);
}

void on_trx_remove_breakpoint(int bp_id) {
  // clear_trap(bp_id);
}

uint8_t trx_read_memory(uint16_t addr) {
  return (uint8_t)mem_read(addr);
}

void trx_key_event(const char* key, bool down, bool shift) {
  // Should never be able to be NULL as it is initialized at the very beginning.
  key_injector_->inject_key(std::string(key), down, shift);
}

void trx_register_callbacks(void* clazz, TRX_OnPokeMemory on_poke_memory) {
  trx_clazz_ = clazz;
  trx_on_poke_memory_ = on_poke_memory;
}

void trs_init_debugger(TRS_InitDebugger init, fabgl::Keyboard* kb) {
  key_injector_ = new KeyInjector(kb);

  TRX_Context* ctx = new TRX_Context;
  ctx->system_name = "PocketTRS";
  ctx->model = static_cast<TRX_ModelType>(trs_model);
  ctx->rom_version = 0;  // TODO
  ctx->capabilities.memory_range.start = 0;
  ctx->capabilities.memory_range.length = 0xFFFF;
  ctx->control_callback = &on_trx_control_callback;
  ctx->read_memory = &trx_read_memory;
  // ctx->breakpoint_callback = &on_trx_add_breakpoint;
  // ctx->remove_breakpoint_callback = &on_trx_remove_breakpoint;
  ctx->get_state_update = &on_trx_get_state_update;
  ctx->register_callbacks = &trx_register_callbacks;
  ctx->key_event = &trx_key_event;
  init(ctx);
}

void trs_timer_speed(int fast)
{
  if (trs_model == 3) fast = 0;
  timer_hz = fast ? TIMER_HZ_M4 : TIMER_HZ_M3;
  cycles_per_timer = fast ? CYCLES_PER_TIMER_M4 : CYCLES_PER_TIMER_M3;
}

void poke_mem(uint16_t address, uint8_t data)
{
  if (trx_on_poke_memory_ != NULL) trx_on_poke_memory_(address, data, trx_clazz_);
  mem_write(address, data);
}

uint8_t peek_mem(uint16_t address)
{
  return mem_read(address);
}

//------------------------------------------------------------------

static tstate_t total_tstate_count = 0;

static byte z80_mem_read(int param, ushort address)
{
  return peek_mem(address);
}

void z80_mem_write(int param, ushort address, byte data)
{
  poke_mem(address, data);
}

static byte z80_io_read(int param, ushort address)
{
  address &= 0xff;
  switch(address) {
  case 31:
  case 0x82:
  case 0xc0:
  case 0xc1:
  case 0xc2:
  case 0xc3:
  case 0xc4:
  case 0xc5:
  case 0xc6:
  case 0xc7:
  case 0xc8:
  case 0xc9:
  case 0xca:
  case 0xcb:
  case 0xcc:
  case 0xcd:
  case 0xce:
  case 0xcf:
  case 0xe0:
  case 0xec:
  case 0xF0:
  case 0xF8:
  case 0xF9:
  case 0xFA:
  case 0xFB:
  case 0xff:
    return z80_in(address, total_tstate_count);
  default:
#if 0
    printf("in(0x%02x)\n", address);
#endif
    return 255;
  }
}

static void z80_io_write(int param, ushort address, byte data)
{
  address &= 0xff;
  switch (address) {
  case 31:
  case 0x80:
  case 0x81:
  case 0x82:
  case 0x83:
  case 0x84:
  case 0x85:
  case 0x86:
  case 0x87:
  case 0xc0:
  case 0xc1:
  case 0xc2:
  case 0xc3:
  case 0xc4:
  case 0xc5:
  case 0xc6:
  case 0xc7:
  case 0xc8:
  case 0xc9:
  case 0xca:
  case 0xcb:
  case 0xcc:
  case 0xcd:
  case 0xce:
  case 0xcf:
  case 0xec:
  case 0xed:
  case 0xee:
  case 0xef:
  case 0xF8:
  case 0xF9:
  case 0xFA:
  case 0xFB:
  case 0xff:
    z80_out(address, data, total_tstate_count);
    break;

    //XXX
    case 0x8c:
    case 0x8d:
    case 0x8e:
      printf("out(0x%02x): 0x%02x\n", address, data);
      break;
  default:
#if 0
    printf("out(0x%02x): 0x%02x\n", address, data);
#endif
    break;
  }
}

static int get_ticks()
{
  static struct timeval start_tv, now;
  static int init = 0;

  if (!init) {
    gettimeofday(&start_tv, NULL);
    init = 1;
  }

  gettimeofday(&now, NULL);
  return (now.tv_sec - start_tv.tv_sec) * 1000 +
                 (now.tv_usec - start_tv.tv_usec) / 1000;
}

static void sync_time_with_host()
{
  unsigned int curtime;
  unsigned int deltatime;
  static unsigned int lasttime = 0;
  static int count = 0;

  deltatime = 1000 / timer_hz;

  curtime = get_ticks();

  if (lasttime + deltatime > curtime) {
    vTaskDelay((lasttime + deltatime - curtime) / portTICK_PERIOD_MS);
    //if ((count++ % 100) == 0) printf("DELAY: %d\n", (lasttime + deltatime - curtime) / portTICK_PERIOD_MS);
  }
  curtime = get_ticks();

  lasttime += deltatime;
  if ((lasttime + deltatime) < curtime) {
    lasttime = curtime;
  }
}

void z80_reset(ushort entryAddr)
{
  mem_init();
  memset(&z80ctx, 0, sizeof(Z80Context));
  Z80RESET(&z80ctx);
  z80ctx.PC = entryAddr;
  z80ctx.memRead = z80_mem_read;
  z80ctx.memWrite = z80_mem_write;
  z80ctx.ioRead = z80_io_read;
  z80ctx.ioWrite = z80_io_write;
}

void z80_reset()
{
  Z80RESET(&z80ctx);
  mem_init();
  trs_screen.setMode(MODE_TEXT_64x16);
  trs_screen.setInverse(false);
  trs_screen.refresh();
}

void z80_run()
{
  if (debugger_pause_) {
    if (debugger_steps_ > 0) debugger_steps_--;
    else {
      vTaskDelay(paused_step_delay_);
      return;
    }
  }
  unsigned last_tstate_count = z80ctx.tstates;

  // TODO: Add PC breakpoint here.

  Z80Execute(&z80ctx);
  total_tstate_count += z80ctx.tstates - last_tstate_count;
  if (z80ctx.tstates >= cycles_per_timer) {
    sync_time_with_host();
    z80ctx.tstates -=  cycles_per_timer;
    z80ctx.int_req = 1;
  }
}
