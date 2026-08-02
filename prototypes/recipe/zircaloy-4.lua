local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if mods["khaostin"] then
  local recipe = khaoslib_recipe:load {
    type = "recipe",
    name = "zircaloy-4",
    subgroup = "intermediate-product",
    order = "ba[zirconium]-a[zircaloy-4]",
    enabled = false,
    auto_recycle = false,
    allow_productivity = true,
    energy_required = 60,
    main_product = "zircaloy-4",
  } :set_categories {"advanced-crafting"}
    :set_icons{{icon = "__khaoszirconium__/graphics/icons/zircaloy-4.png", icon_size = 64}}
    :set_ingredients {
      {type = "item", name = "zirconium-sponge", amount = 17},
      {type = "item", name = "tin-plate", amount = 2},
      {type = "item", name = "iron-plate", amount = 1},
    }
    :set_results {
      {type = "item", name = "zircaloy-4", amount = 20},
    }
    :add_unlock("advanced-material-processing-2")

  if mods["khaosfoundry"] then
    recipe:set_categories {"founding"}
  end

  recipe:commit()
end
