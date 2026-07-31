require("__base__.prototypes.factoriopedia-util");
local khaoslib_entity = require('__khaoslib__.prototypes.entity')
local resource_autoplace = require('__core__.lualib.resource-autoplace')

data.raw["planet"]["nauvis"].map_gen_settings = util.merge {data.raw["planet"]["nauvis"].map_gen_settings, {
  autoplace_controls = {
    ["zircon"] = {},
  },
  autoplace_settings = {
    entity = {
      settings = {
        ["zircon"] = {},
      },
    },
  },
}}

resource_autoplace.initialize_patch_set("zircon", true)

data:extend {
  {
    type = "autoplace-control",
    name = "zircon",
    localised_name = {"", "[entity=zircon] ", {"entity-name.zircon"}},
    category = "resource",
    order = "a-ca",
    richness = true,
  },
}

local resource = khaoslib_entity:load {
    type = "resource",
    name = "zircon",
    flags = {"placeable-neutral"},
    order = "a-b-b",

    map_color = {235, 141, 172},
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},

    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,

    factoriopedia_simulation = {
      init = make_resource("zircon"),
    },

    autoplace = resource_autoplace.resource_autoplace_settings{
      name = "zircon",
      order = "b",
      base_density = 4,
      has_starting_area_placement = true,
      regular_rq_factor_multiplier = 1.2,
      starting_rq_factor_multiplier = 1.2,
    },

    stage_counts = {15000, 9500, 5500, 2900, 1300, 400, 150, 80},
    stages = {
      sheet = {
        filename = "__khaoszirconium__/graphics/entity/zircon/zircon.png",
        priority = "extra-high",
        size = 128,
        frame_count = 8,
        variation_count = 8,
        scale = 0.5,
      },
    },
} :set_icons {{icon = "__khaoszirconium__/graphics/icons/zircon.png", icon_size = 64}}
  :set_minable {hardness = 1, mining_time = 1.5, mining_particle = "zircon-particle", result = "zircon"}

-- Modify zircon autoplace richness:
-- After 500 tiles it's standard
-- Up to 500 tiles, it scales up
local autoplace = resource:get().autoplace
if autoplace then
  resource:set {
    --- @diagnostic disable-next-line: missing-fields, assign-type-mismatch
    autoplace = {
      richness_expression = autoplace.richness_expression .. [[ *
        if(distance_from_nearest_point{x = x, y = y, points = starting_positions} < 500,
          (distance_from_nearest_point{x = x, y = y, points = starting_positions} + 25)/525, 1)]],
    },
  }
end

resource:commit()
