local item_sounds = require('__base__.prototypes.item_sounds')
local khaoslib_item = require("__khaoslib__.prototypes.item")

khaoslib_item:load {
  type = "item",
  name = "zircon",
  localised_name = {"entity-name.zircon"},
  subgroup = "raw-resource",
  order = "da[zircon]",
  stack_size = 50,
  weight = 4.5 * kg,

  inventory_move_sound = item_sounds.resource_inventory_move,
  pick_sound = item_sounds.resource_inventory_pickup,
  drop_sound = item_sounds.resource_inventory_move,

  pictures = {
    {filename = "__khaoszirconium__/graphics/icons/zircon.png", size = 64, scale = 0.5},
    {filename = "__khaoszirconium__/graphics/icons/zircon-1.png", size = 64, scale = 0.5},
    {filename = "__khaoszirconium__/graphics/icons/zircon-2.png", size = 64, scale = 0.5},
    {filename = "__khaoszirconium__/graphics/icons/zircon-3.png", size = 64, scale = 0.5},
    {filename = "__khaoszirconium__/graphics/icons/zircon-4.png", size = 64, scale = 0.5},
  },
} :set_icons {{icon = "__khaoszirconium__/graphics/icons/zircon.png", icon_size = 64}}
  :commit()
