data:extend(
{
  {
    type = "recipe",
    name = "bronze-alloy",
    enabled = false,
    category = "mixing-furnace",
    energy_required = 17.5,
    ingredients =
    {
      {type="item", name="copper-plate", amount=3},
      {type="item", name="tin-plate", amount=2},
    },
    results = 
    {
      {type="item", name="bronze-alloy", amount=5}
    }
  },
  {
    type = "recipe",
    name = "brass-alloy",
    enabled = false,
    category = "mixing-furnace",
    energy_required = 17.5,
    ingredients =
    {
      {type="item", name="copper-plate", amount=3},
      {type="item", name="zinc-plate", amount=2},
    },
    results = 
	{
	  {type="item", name="brass-alloy", amount=5}
	}
  },
  {
    type = "recipe",
    name = "electrum-alloy",
    enabled = false,
    category = "mixing-furnace",
    energy_required = 17.5,
    ingredients =
    {
      {type="item", name="silver-plate", amount=3},
      {type="item", name="gold-plate", amount=2},
    },
    results = 
    {
      {type="item", name="electrum-alloy", amount=5}
    }
  },
  {
    type = "recipe",
    name = "copper-tungsten-alloy",
    enabled = false,
    category = "mixing-furnace",
    energy_required = 17.5,
    ingredients =
    {
      {type="item", name="copper-plate", amount=2},
      {type="item", name="powdered-tungsten", amount=3},
    },
    results = 
    {
      {type="item", name="copper-tungsten-alloy", amount=5}
    }
  },
  {
    type = "recipe",
    name = "tungsten-carbide",
    enabled = false,
    category = "mixing-furnace",
    energy_required = 7,
    ingredients =
    {
      {type="item", name="carbon", amount=1},
      {type="item", name="tungsten-oxide", amount=1},
    },
    results = 
    {
      {type="item", name="tungsten-carbide", amount=2}
    }
  },
  {
    type = "recipe",
    name = "tungsten-carbide-2",
    enabled = false,
    category = "mixing-furnace",
    energy_required = 14,
    ingredients =
    {
      {type="item", name="carbon", amount=1},
      {type="item", name="powdered-tungsten", amount=1},
    },
    results = 
    {
      {type="item", name="tungsten-carbide", amount=2}
    }
  },
  {
    type = "recipe",
    name = "gunmetal-alloy",
    enabled = false,
    category = "mixing-furnace",
    energy_required = 35,
    ingredients =
    {
      {type="item", name="copper-plate", amount=8},
      {type="item", name="tin-plate", amount=1},
      {type="item", name="zinc-plate", amount=1},
    },
    results = 
    {
      {type="item", name="gunmetal-alloy", amount=10}
    }
  },

  {
    type = "recipe",
    name = "invar-alloy",
    enabled = false,
    category = "mixing-furnace",
    energy_required = 17.5,
    ingredients =
    {
      {type="item", name="nickel-plate", amount=2},
      {type="item", name="iron-plate", amount=3},
    },
    results = 
    {
      {type="item", name="invar-alloy", amount=5}
    }
  },
  {
    type = "recipe",
    name = "nitinol-alloy",
    enabled = false,
    category = "mixing-furnace",
    energy_required = 17.5,
    ingredients =
    {
      {type="item", name="nickel-plate", amount=3},
      {type="item", name="titanium-plate", amount=2},
    },
    results = 
    {
      {type="item", name="nitinol-alloy", amount=5}
    }
  },

  {
    type = "recipe",
    name = "cobalt-steel-alloy",
    enabled = false,
    category = "mixing-furnace",
    energy_required = 35,
    ingredients =
    {
      {type="item", name="iron-plate", amount=14},
      {type="item", name="cobalt-plate", amount=1},
    },
    result = "cobalt-steel-alloy",
    result_count = 10,
  },
}
)


