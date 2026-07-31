local item_sounds = require('__base__.prototypes.item_sounds')
local khaoslib_item = require("__khaoslib__.prototypes.item")

khaoslib_item:load {
  type = "item",
  name = "zirconium-sponge",
  subgroup = "raw-material",
  order = "a[smelting]-dn[zirconium-sponge]",
  stack_size = 50,
  weight = 1 * kg,

  inventory_move_sound = item_sounds.wire_inventory_move,
  pick_sound = item_sounds.wire_inventory_pickup,
  drop_sound = item_sounds.wire_inventory_move,

  pictures = {
    {filename = "__khaoszirconium__/graphics/icons/zirconium-sponge.png", size = 64, scale = 0.5},
    {filename = "__khaoszirconium__/graphics/icons/zirconium-sponge-1.png", size = 64, scale = 0.5},
    {filename = "__khaoszirconium__/graphics/icons/zirconium-sponge-2.png", size = 64, scale = 0.5},
  },
} :set_icons {{icon = "__khaoszirconium__/graphics/icons/zirconium-sponge.png", icon_size = 64}}
  :commit()
