
#ifndef __TRS_H__
#define __TRS_H__

#include <stdint.h>
#include "web_debugger.h"

typedef unsigned long long tstate_t;
typedef void (*TRS_InitDebugger)(TRX_Context* ctx);

namespace fabgl {
class Keyboard;
}

// Model III/4 specs
#define TIMER_HZ_M3 30
#define TIMER_HZ_M4 60
#define CLOCK_MHZ_M3 2.02752
#define CLOCK_MHZ_M4 4.05504

extern int trs_model;

void trs_init_debugger(TRS_InitDebugger init, fabgl::Keyboard* kb);
void trs_timer_speed(int fast);
void poke_mem(uint16_t address, uint8_t data);
uint8_t peek_mem(uint16_t address);
void z80_reset(uint16_t entryAddr);
void z80_reset();
void z80_run();

#endif
