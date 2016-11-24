-- Config file for Factorio Evolution Reduction MOD

BASE_REDUCTION_FACTOR = 0.002	--same as vanilla distroy factor, the higher this number the faster the reduction per kill
POLLUTION_FACTOR = 0.00001		--this is 133% of normal (0.000015) to compensate in some way

MINIMUM_EVOLUTION_FACTOR = 0.0	--the lowest point that the evolution factor can be reduced to 0.0 - 1.0

--Adds a new difficulty level, still easier than normal but harder than the original Evolution Reduction difficulty
--Set to false for original difficulty
ALIENS_GEARING_FOR_WAR = true			--The aliens will still take blows to their evolution on loss of infrastructure but will begin to recover faster
EVOLUTION_INCREMENT_FACTOR = 0.000001	--Base incremental factor increased pollution and time evolution factors on destruction

--	Enemy death reduction Multiplyer 
--	the greater the number the larger the evolution reduction on death

WORMS =
{
	{"big-worm-turret", 				0.9},
	{"medium-worm-turret", 				0.6},
	{"small-worm-turret", 				0.3},
	{"bob-big-piercing-worm-turret", 	0.9},
	{"bob-big-electric-worm-turret", 	0.9},
	{"bob-big-explosive-worm-turret", 	0.9},
	{"bob-big-fire-worm-turret", 		0.9},
	{"bob-big-poison-worm-turret", 		0.9},
	{"bob-giant-worm-turret", 			1.2},
	{"bob-behemoth-worm-turret", 		1.5},
}

SPAWNERS =
{
	{"biter-spawner", 			1.2},
	{"spitter-spawner", 		1.0},
	{"bob-biter-spawner", 		2.4},
	{"bob-spitter-spawner", 	2.0},
}

--Testing Purposes
DISPLAY_FACTORS = false
DEBUG = false