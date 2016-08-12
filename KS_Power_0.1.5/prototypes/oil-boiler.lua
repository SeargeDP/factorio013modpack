 data:extend({
  {
    type = "item",
    name = "OilSteamBoiler",
    icon = "__KS_Power__/graphics/icons/OilSteamBoiler.png",
    flags = {"goes-to-quickbar"},
    subgroup = "production-machine",
    order = "f[OilSteamBoiler]",
    place_result = "OilSteamBoiler",
    stack_size = 10
  },
  {
    type = "recipe",
    name = "OilSteamBoiler",
    enabled = false,
    energy_required = 15,
    ingredients =
    {
      {"copper-plate", 16},
      {"steel-plate", 12},
      {"pipe", 10},
      {"concrete", 6},

    },
    result = "OilSteamBoiler"
  },
  
  icon = "__KS_Power__/graphics/icons/OilSteamBoiler.png",
  {
    type = "recipe",
    name = "burn-crude-oil",
    energy_required = 1,
    enabled = "false",
    order = "b[fluid-chemistry]-f",
    category = "OilBurn",
    ingredients =
    {


        {type="fluid", name="water", amount=60},
        {type="fluid", name="crude-oil", amount=1},
    },
      results = 
    {
        {type="fluid", name="water", amount=60, temperature = 100}
                
      },
      main_product= "",
      icon = "__KS_Power__/graphics/icons/burn-crude-oil.png",
    subgroup = "fluid-recipes"
      },
      {
    type = "recipe",
    name = "burn-heavy-oil",
    energy_required = 1,
    enabled = "false",
    order = "b[fluid-chemistry]-g", 
    category = "OilBurn",
    ingredients =
    {


      {type="fluid", name="water", amount=60},
      {type="fluid", name="heavy-oil", amount=1},
    },
      results = 
    {
        {type="fluid", name="water", amount=60, temperature = 100}
            
      },
      main_product= "",
      icon = "__KS_Power__/graphics/icons/burn-heavy-oil.png",
    subgroup = "fluid-recipes"
      },
      {
    type = "recipe",
    name = "burn-light-oil",
    energy_required = 1,
    enabled = "false",
    order = "b[fluid-chemistry]-h", 
    category = "OilBurn",
    ingredients =
    {


      {type="fluid", name="water", amount=60},
      {type="fluid", name="light-oil", amount=0.5},
    },
      results = 
    {
        {type="fluid", name="water", amount=60, temperature = 100}
                
      },
      main_product= "",
      icon = "__KS_Power__/graphics/icons/burn-light-oil.png",
    subgroup = "fluid-recipes"
      },
      
      {
    type = "assembling-machine",
    name = "OilSteamBoiler",
    icon = "__KS_Power__/graphics/icons/OilSteamBoiler.png",
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "OilSteamBoiler"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    animation =
    {
      north =
      {
        priority = "extra-high",
        width = 128,
        height = 128,
        line_length = 8,
        shift = {0.5, -0.4},
        filename = "__KS_Power__/graphics/ob-south-2.png",
        frame_count = 8,
        animation_speed = 0.4,
        run_mode = "forward-then-backward",
      },
      south =
      {
        priority = "extra-high",
        width = 128,
        height = 128,
        line_length = 8,
        shift = {0.5, -0.2},
        filename = "__KS_Power__/graphics/ob-north-2.png",
        frame_count = 8,
        animation_speed = 0.4,
        run_mode = "forward-then-backward",
      },
      east =
      {
        priority = "extra-high",
        width = 128,
        height = 144,
        line_length = 8,
        shift = {0.4, -0.5},
        filename = "__KS_Power__/graphics/ob-west-3.png",
        frame_count = 8,
        animation_speed = 0.4,
        run_mode = "forward-then-backward",
      },
 

      west =
      {
        priority = "extra-high",
        width = 128,
        height = 144,
        line_length = 8,
        shift = {0.35, -0.5},
        filename = "__KS_Power__/graphics/ob-east-3.png",
        frame_count = 8,
        animation_speed = 0.4,
        run_mode = "forward-then-backward",
      }
    },
    
   
   working_sound =
    {
      sound =
      {
        filename = "__KS_Power__/sounds/oil-boiler-loop-2.ogg",
        volume = 0.35
      },
      idle_sound = { filename = "__KS_Power__/sounds/steam-offlet.ogg", volume = 0.35 },
      max_sounds_per_type = 2,
    },
    
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 4 / 4,
      

    },
    energy_usage = "30kW",
    ingredient_count = 3,
    crafting_categories = {"OilBurn"},

    fluid_boxes =
    {
    
    
    
     {
        production_type = "input",
      --  pipe_covers = pipecoverspictures(),
      base_area = 30,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, -2} }}
     },
    {
       production_type = "input",
      --  pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, -2} }}
      },    
         {
        production_type = "output",
     --   pipe_covers = pipecoverspictures(),
       base_level = 1,
       pipe_connections = {{ position = {0, 2} }
                          }
     },      
     
     
     
    
     
    }
  },
  
  
  {
    type = "technology",
    name = "OilBurning",
    icon = "__KS_Power__/graphics/oil-boiler-tech2.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "OilSteamBoiler"
      },
      {
        type = "unlock-recipe",
        recipe = "burn-crude-oil"
      },
      {
        type = "unlock-recipe",
        recipe = "burn-light-oil"
      },
      {
        type = "unlock-recipe",
        recipe = "burn-heavy-oil"
      },
     
    },
    prerequisites = {"oil-processing","concrete"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    },
    order = "f-b-c",
  },
  
{type = "recipe-category", name = "OilBurn"},
})