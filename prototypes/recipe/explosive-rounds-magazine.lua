local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if settings.startup["khaoszirconium-ammo"].value then
  local recipe = khaoslib_recipe:load {
    type = "recipe",
    name = "explosive-rounds-magazine",
    subgroup = "ammo",
    order = "a[basic-clips]-c[explosive-rounds-magazine]",
    enabled = false,
    allow_productivity = true,
    main_product = "explosive-rounds-magazine",
  } :set_categories {"crafting-with-fluid"}
    :set_icons{{icon = "__khaoszirconium__/graphics/icons/explosive-rounds-magazine.png", icon_size = 64}}
    :set_ingredients {
      {type = "item", name = "zirconium-plate", amount = 1},
    }

  local count = 1
  -- add any other count-incrementing ingredients before silica, oil, and piercing rounds ammo

  if mods["khaossilicon"] then
    recipe:add_ingredient {type = "item", name = "silica", amount = count}
  end

  recipe:add_ingredient {type = "fluid", name = "heavy-oil", amount = count}
    :add_ingredient {type = "item", name = "piercing-rounds-magazine", amount = count}

  recipe:set {
    energy_required = count * 6,
  } :set_results {
    {type = "item", name = "explosive-rounds-magazine", amount = count},
  } :add_unlock("military-3")
    :commit()
end
