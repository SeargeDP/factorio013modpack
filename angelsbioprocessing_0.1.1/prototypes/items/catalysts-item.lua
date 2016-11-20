data.raw["item"]["alien-artifact"].icon = "__angelsbioprocessing__/graphics/icons/alien-artifact.png"


--if bobmods.ores then
data:extend(
{
--CATALYSTS
  {
    type = "item",
    name = "catalysator-blue",
    icon = "__angelsbioprocessing__/graphics/icons/catalysator-blue.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "catalysts",
    stack_size = 200
  },
  {
    type = "item",
    name = "catalysator-green",
    icon = "__angelsbioprocessing__/graphics/icons/catalysator-green.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "catalysts",
    stack_size = 200
  },
  {
    type = "item",
    name = "catalysator-orange",
    icon = "__angelsbioprocessing__/graphics/icons/catalysator-orange.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "catalysts",
    stack_size = 200
  },
  {
    type = "item",
    name = "catalysator-purple",
    icon = "__angelsbioprocessing__/graphics/icons/catalysator-purple.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "catalysts",
    stack_size = 200
  },
  {
    type = "item",
    name = "catalysator-red",
    icon = "__angelsbioprocessing__/graphics/icons/catalysator-red.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "catalysts",
    stack_size = 200
  },
  {
    type = "item",
    name = "catalysator-yellow",
    icon = "__angelsbioprocessing__/graphics/icons/catalysator-yellow.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "catalysts",
    stack_size = 200
  },
  {
    type = "item",
    name = "catalysator-base",
    icon = "__angelsbioprocessing__/graphics/icons/catalysator-base.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "catalysts",
    stack_size = 200
  },
}
)
-- if angelsmods.refining then
-- data:extend(
-- {
  -- {
    -- type = "item",
    -- name = "catalysator-brown",
    -- icon = "__angelsrefining__/graphics/icons/catalysator-brown.png",
    -- flags = {"goes-to-main-inventory"},
	-- subgroup = "catalysts",
    -- stack_size = 200
  -- },
-- }
-- )
-- end
-- if not data.raw.resource["small-alien-artifact"] then

data:extend(
{
--ARTIFACT
  {
    type = "item",
    name = "alien-artifact-red",
    icon = "__angelsbioprocessing__/graphics/icons/alien-artifact-red.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-material",
    order = "g[alien-artifact]-b[red]",
    stack_size = 500,
    default_request_amount = 10
  },

  {
    type = "item",
    name = "alien-artifact-orange",
    icon = "__angelsbioprocessing__/graphics/icons/alien-artifact-orange.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-material",
    order = "g[alien-artifact]-c[orange]",
    stack_size = 500,
    default_request_amount = 10
  },

  {
    type = "item",
    name = "alien-artifact-yellow",
    icon = "__angelsbioprocessing__/graphics/icons/alien-artifact-yellow.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-material",
    order = "g[alien-artifact]-d[yellow]",
    stack_size = 500,
    default_request_amount = 10
  },

  {
    type = "item",
    name = "alien-artifact-green",
    icon = "__angelsbioprocessing__/graphics/icons/alien-artifact-green.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-material",
    order = "g[alien-artifact]-e[green]",
    stack_size = 500,
    default_request_amount = 10
  },

  {
    type = "item",
    name = "alien-artifact-blue",
    icon = "__angelsbioprocessing__/graphics/icons/alien-artifact-blue.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-material",
    order = "g[alien-artifact]-f[blue]",
    stack_size = 500,
    default_request_amount = 10
  },
  {
    type = "item",
    name = "alien-artifact-purple",
    icon = "__angelsbioprocessing__/graphics/icons/alien-artifact-purple.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-material",
    order = "g[alien-artifact]-g[purple]",
    stack_size = 500,
    default_request_amount = 10
  },
--SMALL ARTIFACT
 {
    type = "item",
    name = "small-alien-artifact-red",
    icon = "__angelsbioprocessing__/graphics/icons/small-alien-artifact-red.png",
    flags = { "goes-to-main-inventory" },
    subgroup = "raw-material",
    order = "g[alien-artifact]-b[red]-a[small]",
    stack_size = 500,
    default_request_amount = 100
  },
  {
    type = "item",
    name = "small-alien-artifact-orange",
    icon = "__angelsbioprocessing__/graphics/icons/small-alien-artifact-orange.png",
    flags = { "goes-to-main-inventory" },
    subgroup = "raw-material",
    order = "g[alien-artifact]-c[orange]-a[small]",
    stack_size = 500,
    default_request_amount = 100
  },
  {
    type = "item",
    name = "small-alien-artifact-yellow",
    icon = "__angelsbioprocessing__/graphics/icons/small-alien-artifact-yellow.png",
    flags = { "goes-to-main-inventory" },
    subgroup = "raw-material",
    order = "g[alien-artifact]-d[yellow]-a[small]",
    stack_size = 500,
    default_request_amount = 100
  },
  {
    type = "item",
    name = "small-alien-artifact-green",
    icon = "__angelsbioprocessing__/graphics/icons/small-alien-artifact-green.png",
    flags = { "goes-to-main-inventory" },
    subgroup = "raw-material",
    order = "g[alien-artifact]-e[green]-a[small]",
    stack_size = 500,
    default_request_amount = 100
  },
  {
    type = "item",
    name = "small-alien-artifact-blue",
    icon = "__angelsbioprocessing__/graphics/icons/small-alien-artifact-blue.png",
    flags = { "goes-to-main-inventory" },
    subgroup = "raw-material",
    order = "g[alien-artifact]-f[blue]-a[small]",
    stack_size = 500,
    default_request_amount = 100
  },
  {
    type = "item",
    name = "small-alien-artifact-purple",
    icon = "__angelsbioprocessing__/graphics/icons/small-alien-artifact-purple.png",
    flags = { "goes-to-main-inventory" },
    subgroup = "raw-material",
    order = "g[alien-artifact]-g[purple]-a[small]",
    stack_size = 500,
    default_request_amount = 100
  },
  {
    type = "item",
    name = "small-alien-artifact",
    icon = "__angelsbioprocessing__/graphics/icons/small-alien-artifact.png",
    flags = { "goes-to-main-inventory" },
    subgroup = "raw-material",
    order = "g[alien-artifact]-a[pink]-a[small]",
    stack_size = 500,
    default_request_amount = 100
  },
}
)
-- end
-- else
-- data.raw["item"]["alien-artifact"].icon = "__angelsbioprocessing__/graphics/icons/alien-artifact.png"
-- data:extend(
-- {
  -- {
    -- type = "item",
    -- name = "small-alien-artifact",
    -- icon = "__angelsbioprocessing__/graphics/icons/small-alien-artifact.png",
    -- flags = { "goes-to-main-inventory" },
    -- subgroup = "raw-material",
    -- order = "g[alien-artifact]-a[pink]-a[small]",
    -- stack_size = 500,
    -- default_request_amount = 100
  -- },
  -- {
    -- type = "item",
    -- name = "catalysator-base",
    -- icon = "__angelsbioprocessing__/graphics/icons/catalysator-base.png",
    -- flags = {"goes-to-main-inventory"},
	-- subgroup = "catalysts",
    -- stack_size = 200
  -- },
-- }
-- )

-- end