
--Base mod add
--underground transport belt
require("prototypes.base-mod.entity.transport-belt")
require("prototypes.base-mod.recipes.transport-belt")
require("prototypes.base-mod.technology.transport-belt")
require("prototypes.base-mod.items.transport-belt")

--underground pipes
require("prototypes.base-mod.entity.pipe")
require("prototypes.base-mod.recipes.pipe")
require("prototypes.base-mod.technology.pipe")
require("prototypes.base-mod.items.pipe")

--electric poles
require("prototypes.base-mod.entity.electric-pole")
require("prototypes.base-mod.recipes.electric-pole")
require("prototypes.base-mod.items.electric-pole")
require("prototypes.base-mod.technology.electric-pole")



data:extend({
    {
        type = "item-subgroup",
        name = "underground-belt",
        group = "logistics",
        order = "b",
    },
	{
        type = "item-subgroup",
        name = "pipe-to-ground",
        group = "logistics",
        order = "d",
    }
})
data.raw.recipe["underground-belt"].subgroup = "underground-belt"
data.raw.recipe["underground-belt"].order = "a[underground-belt]-a[underground-belt]"
data.raw.recipe["fast-underground-belt"].subgroup = "underground-belt"
data.raw.recipe["fast-underground-belt"].order = "b[fast-underground-belt]-a[fast-underground-belt]"
data.raw.recipe["express-underground-belt"].subgroup = "underground-belt"
data.raw.recipe["express-underground-belt"].order = "c[express-underground-belt]-a[express-underground-belt]"
data.raw.recipe["pipe-to-ground"].subgroup = "pipe-to-ground"
data.raw.recipe["pipe-to-ground"].order = "a[pipe-to-ground]-a[pipe-to-ground]"
data.raw.recipe["medium-pipe-to-ground"].subgroup = "pipe-to-ground"
data.raw.recipe["medium-pipe-to-ground"].order = "b[medium-pipe-to-ground]-b[medium-pipe-to-ground]"
data.raw.recipe["long-pipe-to-ground"].subgroup = "pipe-to-ground"
data.raw.recipe["long-pipe-to-ground"].order = "c[long-pipe-to-ground]-c[long-pipe-to-ground]"
data.raw.recipe["ultra-pipe-to-ground"].subgroup = "pipe-to-ground"
data.raw.recipe["ultra-pipe-to-ground"].order = "d[ultra-pipe-to-ground]-d[ultra-pipe-to-ground]"
data.raw.recipe["continental-pipe-to-ground"].subgroup = "pipe-to-ground"
data.raw.recipe["continental-pipe-to-ground"].order = "e[continental-pipe-to-ground]-e[continental-pipe-to-ground]"
