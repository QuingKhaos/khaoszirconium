local khaoslib_setting = require("__khaoslib__.settings.setting")

khaoslib_setting:load {
  type = "bool-setting",
  name = "khaoszirconium-early",
  setting_type = "startup",
  default_value = true,
  order = "a[settings]-d[early]",
} :commit()
