local item_sounds = require('__base__.prototypes.item_sounds')
local khaoslib_item = require("__khaoslib__.prototypes.item")

if mods["khaostin"] then
  khaoslib_item:load {
    type = "item",
    name = "zircaloy-4",
    subgroup = "intermediate-product",
    order = "ba[zirconium]-a[zircaloy-4]",
    stack_size = 100,
    weight = 5 * kg,

    inventory_move_sound = item_sounds.metal_small_inventory_move,
    pick_sound = item_sounds.metal_small_inventory_pickup,
    drop_sound = item_sounds.metal_small_inventory_move,
  } :set_icons {{icon = "__khaoszirconium__/graphics/icons/zircaloy-4.png", icon_size = 64}}
    :commit()
end
