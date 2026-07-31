local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

khaoslib_recipe:load {
  type = "recipe",
  name = "zirconium-sponge",
  subgroup = "raw-material",
  order = "a[smelting]-dn[zirconium-sponge]",
  enabled = false,
  auto_recycle = false,
  allow_productivity = true,
  energy_required = 1.6,
  main_product = "zirconium-sponge",
} :set_categories {"chemistry"}
  :set_icons{{icon = "__khaoszirconium__/graphics/icons/zirconium-sponge.png", icon_size = 64}}
  :set_ingredients {
    {type = "item", name = "zirconia", amount = 1},
    {type = "fluid", name = "sulfuric-acid", amount = 5},
  }
  :set_results {
    {type = "item", name = "zirconium-sponge", amount = 1},
  }
  :commit()
