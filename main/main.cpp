#include "fabgl.h"
#include "trs.h"
#include "trs-keyboard.h"
#include "trs_screen.h"
#include "i2s.h"
#include "cassette.h"
#include "io.h"
#include "ui.h"
#include "settings.h"
#include "splash.h"

#include "button.h"
#include "led.h"
#include "wifi.h"
#include "ota.h"
#include "storage.h"
#include "event.h"
#include "freertos/task.h"

#include "trs-io.h"
#include "trs-fs.h"
#include "ntp_sync.h"

#include "web_debugger.h"


fabgl::PS2Controller  PS2Controller;
fabgl::Keyboard* keyboard_ = NULL;


void setup() {
#if 1
  printf("Heap size before VGA init: %d\n", esp_get_free_heap_size());
  printf("DRAM size before VGA init: %d\n", heap_caps_get_free_size(MALLOC_CAP_INTERNAL));
#endif
  PS2Controller.begin(PS2Preset::KeyboardPort0, KbdMode::CreateVirtualKeysQueue);
  keyboard_ = PS2Controller.keyboard();

  init_button();
  init_events();
  init_trs_io();
  init_storage();
  init_io();
  init_i2s();
  trs_screen.init();
  init_settings();
  show_splash();
  init_trs_fs_posix();
  trs_init_debugger(&init_debugger, keyboard_);
  init_wifi();
  vTaskDelay(5000 / portTICK_PERIOD_MS);
  //settingsCalibration.setScreenOffset();

  z80_reset(0);

#if 1
  printf("Heap size after VGA init: %d\n", esp_get_free_heap_size());
  printf("DRAM size after VGA init: %d\n", heap_caps_get_free_size(MALLOC_CAP_INTERNAL));
#endif
}

void loop() {
  static fabgl::VirtualKey lastvk = fabgl::VK_NONE;

  z80_run();

  if (is_button_short_press()) {
    z80_reset();
  }

  if (keyboard_ == nullptr) {
    return;
  }
  if (keyboard_->virtualKeyAvailable()) {
    bool down;
    auto vk = keyboard_->getNextVirtualKey(&down);
    //printf("VirtualKey = %s\n", keyboard_->virtualKeyToString(vk));
    if (down && vk == fabgl::VK_F3 && trs_screen.isTextMode()) {
      configure_pocket_trs();
    } else if (down && vk == fabgl::VK_F9) {
      z80_reset();
    } else if (down && vk == fabgl::VK_F4) {
      trs_screen.screenshot();
    } else {
      process_key(vk, down);
    }
  }
}

extern "C" void app_main()
{
  setup();
  while (true) loop();
}
