local khaoslib_technology = require("__khaoslib__.prototypes.technology")

khaoslib_technology:load {
  type = "technology",
  name = "zirconium-processing",
  order = "z",
} :set_icons {{icon = "__khaoszirconium__/graphics/technology/zirconium-processing.png", icon_size = 256}}
  :set_prerequisites {"zirconia-processing", "sulfur-processing"}
  :set_unit {
    time = 30,
    count = 75,
    ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
    },
  }
  :add_unlock_recipe("zirconium-sponge")
  :add_unlock_recipe("zirconium-plate")
  :commit()
