local khaoslib_entity = require("__khaoslib__.prototypes.entity")

local min = settings.startup["khaoszirconium-early"].value and 7 or 1
local max = settings.startup["khaoszirconium-early"].value and 15 or 5

local rocks = khaoslib_entity.find("simple-entity", function(entity)
  return (entity.subgroup == "grass" or entity.subgroup == "wrecks") and entity.name:match("rock") ~= nil
end)

for _, rock_name in pairs(rocks) do
  local adjusted_min = rock_name:match("huge") ~= nil and min * 2 or min
  local adjusted_max = rock_name:match("huge") ~= nil and max * 2 or max
  khaoslib_entity:load("simple-entity", rock_name)
    :add_minable_result {type = "item", name = "zircon", amount_min = adjusted_min, amount_max = adjusted_max}
    :commit()
end
