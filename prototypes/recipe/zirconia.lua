local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

local recipe = khaoslib_recipe:load {
  type = "recipe",
  name = "zirconia",
  subgroup = "raw-material",
  order = "a[smelting]-dm[zirconia]",
  enabled = true,
  allow_productivity = true,
  energy_required = 6.4,
  main_product = "zirconia",
} :set_categories {"smelting"}
  :set_icons{{icon = "__khaoszirconium__/graphics/icons/zirconia.png", icon_size = 64}}
  :set_ingredients {
    {type = "item", name = "zircon", amount = 1},
  }
  :set_results {
    {type = "item", name = "zirconia", amount = 2},
  }

if mods["khaostitanium"] and settings.startup["khaoszirconium-byproduct"].value then
  recipe:replace_result("zirconia", function(result)
      result.independent_probability = 0.95
      return result
    end)
    :add_result {type = "item", name = "titanium-ore", amount = 1, independent_probability = 0.1}
end

recipe:commit()
