local item_sounds = require('__base__.prototypes.item_sounds')
local khaoslib_item = require("__khaoslib__.prototypes.item")

khaoslib_item:load {
  type = "item",
  name = "zirconia",
  subgroup = "raw-material",
  order = "a[smelting]-dm[zirconia]",
  stack_size = 200,
  weight = 1 * kg,

  inventory_move_sound = item_sounds.brick_inventory_move,
  pick_sound = item_sounds.brick_inventory_pickup,
  drop_sound = item_sounds.brick_inventory_move,
} :set_icons {{icon = "__khaoszirconium__/graphics/icons/zirconia.png", icon_size = 64}}
  :commit()
