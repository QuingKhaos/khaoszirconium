local khaoslib_setting = require("__khaoslib__.settings.setting")

khaoslib_setting:load {
  type = "bool-setting",
  name = "khaoszirconium-byproduct",
  setting_type = "startup",
  default_value = true,
  order = "a[settings]-b[byproduct]",
} :commit()

khaoslib_setting:load {
  type = "bool-setting",
  name = "khaoszirconium-more",
  setting_type = "startup",
  default_value = false,
  order = "a[settings]-b[more]",
} :commit()

khaoslib_setting:load {
  type = "bool-setting",
  name = "khaoszirconium-early",
  setting_type = "startup",
  default_value = true,
  order = "a[settings]-d[early]",
} :commit()

khaoslib_setting:load {
  type = "bool-setting",
  name = "khaoszirconium-ammo",
  setting_type = "startup",
  default_value = true,
  order = "a[settings]-e[ammo]",
} :commit()
