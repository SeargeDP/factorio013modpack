require ("prototypes.item")
require ("prototypes.recipe")
require ("prototypes.technology")


require ("prototypes.tiles_reinforced")
require ("prototypes.tiles_smooth")
require ("prototypes.tiles_wood")
require ("prototypes.tiles_rusty")
require ("prototypes.tiles_rustygrate")
require ("prototypes.tiles_arrowgrate")
require ("prototypes.tiles_circuit")
require ("prototypes.tiles_diamondplate")
require ("prototypes.tiles_gravel")
require ("prototypes.tiles_snow")
require ("prototypes.tiles_lava")
require ("prototypes.tiles_alienmetal")
require ("prototypes.tiles_asphalt")
require ("prototypes.tiles_metalscraps")
require ("prototypes.tiles_hexagonb")


data.raw["item"]["green_grass"].place_as_tile = {result = "grass",	condition_size = 4,	condition = { "water-tile" }}
data.raw["item"]["sand_light"].place_as_tile = {result = "sand",	condition_size = 4,	condition = { "water-tile" }}