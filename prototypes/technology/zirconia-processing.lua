local khaoslib_technology = require("__khaoslib__.prototypes.technology")

khaoslib_technology:load {
  type = "technology",
  name = "zirconia-processing",
  order = "z",
} :set_icons {{icon = "__khaoszirconium__/graphics/technology/zirconia-processing.png", icon_size = 256}}
  :set {
    research_trigger = {
      type = "mine-entity",
      entities = {"zircon"},
    },
  }
  :add_unlock_recipe("zirconia")
  :commit()
