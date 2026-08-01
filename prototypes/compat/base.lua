local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")
local khaoslib_technology = require("__khaoslib__.prototypes.technology")

khaoslib_recipe:load("stone-furnace")
  :replace_ingredient("stone", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 1) return ingredient end)
  :add_ingredient {type = "item", name = "zircon", amount = 1}
  :commit()

khaoslib_recipe:load("steel-furnace")
  :replace_ingredient("stone-brick", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 4) return ingredient end)
  :add_ingredient {type = "item", name = "zirconia", amount = 6}
  :commit()

if mods["khaossilicon"] then
  khaoslib_recipe:load("electric-furnace"):replace_ingredient("stone-brick", function(ingredient) ingredient.name = "zirconia" return ingredient end):commit()
else
  khaoslib_recipe:load("electric-furnace")
    :replace_ingredient("stone-brick", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 5) return ingredient end)
    :add_ingredient {type = "item", name = "zirconia", amount = 5}
    :commit()
end

khaoslib_recipe:load("concrete"):replace_ingredient("iron-ore", function(ingredient) ingredient.name = "zircon" return ingredient end):commit()

khaoslib_recipe:load("explosives")
  :set {
    energy_required = 6,
  }
  :add_ingredient {type = "item", name = "zirconium-plate", amount = 1}
  :replace_result("explosives", function(result) result.amount = 3 return result end)
  :commit()

khaoslib_recipe:load("nuclear-reactor"):add_ingredient {type = "item", name = zircaloy4_or_zirconium_plate, amount = 100} :commit()

if not mods["Atomic_Overhaul"] then
  khaoslib_recipe:load("uranium-fuel-cell")
    :replace_ingredient(zirconium_lead_plate_or_iron_plate, function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 5) return ingredient end)
    :add_ingredient {type = "item", name = zircaloy4_or_zirconium_plate, amount = 5}
    :commit()
end

khaoslib_recipe:load("low-density-structure")
  :replace_ingredient("copper-plate", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 10) return ingredient end)
  :add_ingredient {type = "item", name = "zirconia", amount = 10}
  :commit()

khaoslib_technology:load("advanced-material-processing"):add_prerequisite("zirconia-processing"):commit()
khaoslib_technology:load("low-density-structure"):add_prerequisite("zirconia-processing"):commit()
khaoslib_technology:load("explosives"):set_prerequisites {"zirconium-processing"} :commit()
khaoslib_technology:load("military-3"):add_prerequisite("zirconium-processing"):commit()
khaoslib_technology:load("nuclear-power"):add_prerequisite("zirconium-processing"):commit()

if settings.startup["khaoszirconium-more"].value then
  khaoslib_recipe:load("speed-module-3"):add_ingredient {type = "item", name = "cermet", amount = 1} :commit()
  khaoslib_recipe:load("efficiency-module-3"):add_ingredient {type = "item", name = "cermet", amount = 1} :commit()
  khaoslib_recipe:load("productivity-module-3"):add_ingredient {type = "item", name = "cermet", amount = 1} :commit()

  if mods["quality"] then
    khaoslib_recipe:load("quality-module-3"):add_ingredient {type = "item", name = "cermet", amount = 1} :commit()
  end

  khaoslib_recipe:load("beacon"):add_ingredient {type = "item", name = "cermet", amount = 10} :commit()
  khaoslib_recipe:load("spidertron"):add_ingredient {type = "item", name = "cermet", amount = 8} :commit()
  khaoslib_recipe:load("assembling-machine-3"):add_ingredient {type = "item", name = "cermet", amount = 2} :commit()

  khaoslib_technology:load("effect-transmission"):add_prerequisite("cermet"):commit()
  khaoslib_technology:load("automation-3"):add_prerequisite("cermet"):commit()
  khaoslib_technology:load("speed-module-3"):add_prerequisite("cermet"):commit()
  khaoslib_technology:load("efficiency-module-3"):add_prerequisite("cermet"):commit()
  khaoslib_technology:load("productivity-module-3"):add_prerequisite("cermet"):commit()
end

if mods["khaostin"] then
  khaoslib_technology:load("advanced-material-processing-2"):add_prerequisite("zirconium-processing"):commit()
end
