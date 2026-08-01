local item_sounds = require('__base__.prototypes.item_sounds')
local khaoslib_item = require("__khaoslib__.prototypes.item")

if settings.startup["khaoszirconium-more"].value then
  khaoslib_item:load {
    type = "item",
    name = "cermet",
    subgroup = "intermediate-product",
    order = "ba[zirconium]-b[cermet]",
    stack_size = 200,
    weight = 0.5 * kg,

    inventory_move_sound = item_sounds.wire_inventory_move,
    pick_sound = item_sounds.wire_inventory_pickup,
    drop_sound = item_sounds.wire_inventory_move,

    pictures = {
      {filename = "__khaoszirconium__/graphics/icons/cermet.png", size = 64, scale = 0.5},
      {filename = "__khaoszirconium__/graphics/icons/cermet-1.png", size = 64, scale = 0.5},
      {filename = "__khaoszirconium__/graphics/icons/cermet-2.png", size = 64, scale = 0.5},
      {filename = "__khaoszirconium__/graphics/icons/cermet-3.png", size = 64, scale = 0.5},
      {filename = "__khaoszirconium__/graphics/icons/cermet-4.png", size = 64, scale = 0.5},
    },
  } :set_icons {{icon = "__khaoszirconium__/graphics/icons/cermet.png", icon_size = 64}}
    :commit()
end
