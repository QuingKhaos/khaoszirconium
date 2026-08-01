require("__khaoszirconium__.prototypes.ammo.explosive-rounds-magazine")

require("__khaoszirconium__.prototypes.particles.zircon-particle")
require("__khaoszirconium__.prototypes.entity.resources.zircon")

require("__khaoszirconium__.prototypes.item.zircon")
require("__khaoszirconium__.prototypes.item.zirconia")
require("__khaoszirconium__.prototypes.item.zirconium-sponge")
require("__khaoszirconium__.prototypes.item.zirconium-plate")
require("__khaoszirconium__.prototypes.item.cermet")

require("__khaoszirconium__.prototypes.recipe.zirconia")
require("__khaoszirconium__.prototypes.recipe.zirconium-sponge")
require("__khaoszirconium__.prototypes.recipe.zirconium-plate")
require("__khaoszirconium__.prototypes.recipe.cermet")
require("__khaoszirconium__.prototypes.recipe.explosive-rounds-magazine")

require("__khaoszirconium__.prototypes.technology.zirconia-processing")
require("__khaoszirconium__.prototypes.technology.zirconium-processing")
require("__khaoszirconium__.prototypes.technology.cermet")

--- Lead plate or iron plate, depending on whether Lead Revamped is installed.
--- @type data.ItemID
zirconium_lead_plate_or_iron_plate = mods["khaoslead"] and "lead-plate" or "iron-plate"

--- Zircaloy-4 or zirconium plate, depending on whether Titanium Revamped is installed.
--- @type data.ItemID
zircaloy4_or_zirconium_plate = mods["khaostin"] and "zircaloy-4" or "zirconium-plate"

require("__khaoszirconium__.prototypes.compat.base")

require("__khaoszirconium__.prototypes.compat.lex-aircraft")
