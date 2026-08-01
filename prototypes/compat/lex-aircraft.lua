local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")
local khaoslib_technology = require("__khaoslib__.prototypes.technology")

if mods["lex-aircraft"] then
  khaoslib_recipe:load("lex-flying-gunship"):add_ingredient {type = "item", name = "zirconia", amount = 10} :commit()
  khaoslib_recipe:load("lex-flying-cargo"):add_ingredient {type = "item", name = "zirconia", amount = 20} :commit()
  khaoslib_recipe:load("lex-flying-heavyship"):add_ingredient {type = "item", name = "zirconia", amount = 80} :commit()

  khaoslib_technology:load("lex-flying-cargo-ships"):add_prerequisite("zirconia-processing"):commit()
end
