#include "key_injector.h"

#include "esp_log.h"
#include "fabgl.h"
#include <map>
#include <tuple>

static const char* TAG = "KeyInj";

typedef std::pair<std::string, VirtualKey> KeyMapPair;

// public constructor
KeyInjector::KeyInjector(fabgl::Keyboard* kb) : kb_(kb) {
  if (kb_ == NULL) {
    ESP_LOGE(TAG, "Given keyboard is NULL. Will crash if used.");
  }

  // Initialize ASCII to FabGLs VK mapping.
  for (const auto vk : allKeys) {
    int ascii = kb->virtualKeyToASCII(vk);
    if (ascii) {
      auto key = std::string(1, static_cast<char>(ascii));
      asciiToVK_.insert(KeyMapPair(key, vk));
    }
  }

  // Add non-standard key mappings.
  asciiToVK_.insert(KeyMapPair("ArrowLeft", fabgl::VK_LEFT));
  asciiToVK_.insert(KeyMapPair("ArrowRight", fabgl::VK_RIGHT));
  asciiToVK_.insert(KeyMapPair("ArrowUp", fabgl::VK_UP));
  asciiToVK_.insert(KeyMapPair("ArrowDown", fabgl::VK_DOWN));
  asciiToVK_.insert(KeyMapPair("Enter", fabgl::VK_RETURN));
  asciiToVK_.insert(KeyMapPair("Tab", fabgl::VK_TAB));
  asciiToVK_.insert(KeyMapPair("F1", fabgl::VK_F1));
  asciiToVK_.insert(KeyMapPair("F2", fabgl::VK_F2));
  asciiToVK_.insert(KeyMapPair("F3", fabgl::VK_F3));
  asciiToVK_.insert(KeyMapPair("F4", fabgl::VK_F4));
  asciiToVK_.insert(KeyMapPair("F5", fabgl::VK_F5));
  asciiToVK_.insert(KeyMapPair("F6", fabgl::VK_F6));
  asciiToVK_.insert(KeyMapPair("F7", fabgl::VK_F7));
  asciiToVK_.insert(KeyMapPair("F8", fabgl::VK_F8));
  asciiToVK_.insert(KeyMapPair("F9", fabgl::VK_F9));
  asciiToVK_.insert(KeyMapPair("F10", fabgl::VK_F10));
  asciiToVK_.insert(KeyMapPair("F11", fabgl::VK_F11));
  asciiToVK_.insert(KeyMapPair("F12", fabgl::VK_F12));
  asciiToVK_.insert(KeyMapPair("Escape", fabgl::VK_ESCAPE));
  asciiToVK_.insert(KeyMapPair("%20", fabgl::VK_SPACE));
  asciiToVK_.insert(KeyMapPair("Backspace", fabgl::VK_BACKSPACE));
  asciiToVK_.insert(KeyMapPair("Alt", fabgl::VK_LALT));
  asciiToVK_.insert(KeyMapPair("Control", fabgl::VK_LCTRL));
  asciiToVK_.insert(KeyMapPair("Shift", fabgl::VK_LSHIFT));
}

// public
void KeyInjector::inject_key(const std::string& key, bool down, bool shift) {
  std::map<std::string, VirtualKey>::iterator it = asciiToVK_.find(key);
  if (it != asciiToVK_.end()) {
    kb_->injectVirtualKey(it->second, down, true);
  } else {
    ESP_LOGW(TAG, "Cannot find VirtualKey with value %s", key.c_str());
  }
}