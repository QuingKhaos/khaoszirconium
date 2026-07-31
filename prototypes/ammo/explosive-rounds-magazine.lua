local khaoslib_ammo = require("__khaoslib__.prototypes.ammo")

if settings.startup["khaoszirconium-ammo"].value then
  khaoslib_ammo:load {
    type = "ammo",
    name = "explosive-rounds-magazine",
    subgroup = "ammo",
    order = "a[basic-clips]-c[explosive-rounds-magazine]",
    stack_size = 200,
    magazine_size = 10,
    ammo_category = "bullet",

  } :set_icons {{icon = "__khaoszirconium__/graphics/icons/explosive-rounds-magazine.png", icon_size = 64}}
    :set_ammo_types {
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          source_effects = {
            type = "create-explosion",
            entity_name = "explosion-gunshot",
          },
          target_effects = {
            {
              type = "create-entity",
              entity_name = "explosion-hit",
              offsets = {{0, 1}},
              offset_deviation = {{-0.5, -0.5}, {0.5, 0.5}},
            },
            {
              type = "damage",
              damage = {amount = 5, type = "physical"},
            },
            {
              type = "nested-result",
              action = {
                type = "area",
                radius = 1,
                action_delivery = {
                  type = "instant",
                  target_effects = {
                    {
                      type = "damage",
                      damage = {amount = 5, type = "explosion"},
                    },
                    {
                      type = "create-entity",
                      entity_name = "explosion",
                    },
                  },
                },
              },
            },
          },
        },
      },
    }
    :commit()
end
