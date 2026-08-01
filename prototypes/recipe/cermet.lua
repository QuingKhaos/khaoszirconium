local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if settings.startup["khaoszirconium-more"].value then
  local recipe = khaoslib_recipe:load {
    type = "recipe",
    name = "cermet",
    subgroup = "intermediate-product",
    order = "ba[zirconium]-a[cermet]",
    enabled = false,
    auto_recycle = false,
    allow_productivity = true,
    main_product = "cermet",
  } :set_categories {"crafting"}
    :set_icons{{icon = "__khaoszirconium__/graphics/icons/cermet.png", icon_size = 64}}
    :set_ingredients {
      {type = "item", name = "zirconia", amount = 2},
      {type = "item", name = "copper-plate", amount = 1},
    }

  if mods["khaossilicon"] then
    recipe:add_ingredient {type = "item", name = "silica", amount = 1}
  end

  if mods["khaostitanium"] then
    recipe:add_ingredient {type = "item", name = "titanium-plate", amount = 1}
  end

  recipe:set {
    energy_required = recipe:count_ingredients() + 1,
  } :set_results {
    {type = "item", name = "cermet", amount = recipe:count_ingredients() + 1},
  }

  if mods["alloy-smelting"] and settings.startup["alloy-smelting-create-kilns"].value then
    recipe:set_categories {"kiln-smelting"}
  end

  recipe:commit()
end
