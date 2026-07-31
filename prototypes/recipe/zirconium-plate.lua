local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

khaoslib_recipe:load {
  type = "recipe",
  name = "zirconium-plate",
  subgroup = "raw-material",
  order = "a[smelting]-dp[zirconium-plate]",
  enabled = false,
  auto_recycle = false,
  allow_productivity = true,
  energy_required = 3.2,
  main_product = "zirconium-plate",
} :set_categories {"smelting"}
  :set_icons{{icon = "__khaoszirconium__/graphics/icons/zirconium-plate.png", icon_size = 64}}
  :set_ingredients {
    {type = "item", name = "zirconium-sponge", amount = 1},
  }
  :set_results {
    {type = "item", name = "zirconium-plate", amount = 1},
  }
  :commit()
