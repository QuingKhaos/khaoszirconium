local khaoslib_technology = require("__khaoslib__.prototypes.technology")

if settings.startup["khaoszirconium-more"].value then
  local tech = khaoslib_technology:load {
    type = "technology",
    name = "cermet",
    localised_name = {"item-name.cermet"},
    order = "c",
  } :set_icons {{icon = "__khaoszirconium__/graphics/technology/cermet.png", icon_size = 256}}
    :set_prerequisites {"zirconia-processing"}
    :set_unit {
      time = 30,
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
    }
    :add_unlock_recipe("cermet")

  if mods["khaostitanium"] then
    tech:add_prerequisite("titanium-processing")
  end

  tech:commit()
end
