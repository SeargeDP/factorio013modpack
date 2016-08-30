-- Just some stats on how the game works to help you figure out what the values mean.
-- water = 100(max_temperature) - 15(default_temperature) = 85(Temperature range).
-- 85 * 1kJ(heat_capacity) per degree = 85kJ. 85kJ * 60(Ticks) = 5100kJ
-- Base game steam engine power generator = 5100kJ(water heat capacity) * 1(effectivity) * 0.1(fluid_usage_per_tick) = 510kW

if bobmods.config.power.OverideBoilerValues then
-- A total of 5100kW is required to reach 100 degrees.
-- A lower efficiency means the fuel is burned faster to meet the energy consumption value.
  bobmods.config.power.boiler1 = {burner = {effectivity = 0.50}, energy_consumption = "390kW"}
  bobmods.config.power.boiler2 = {burner = {effectivity = 0.75}, energy_consumption = "520kW"}
  bobmods.config.power.boiler3 = {burner = {effectivity = 1.00}, energy_consumption = "700kW"}
  bobmods.config.power.boiler4 = {burner = {effectivity = 1.50}, energy_consumption = "1.1MW"}
end

if bobmods.config.power.OverideSteamEngineValues then
-- Higher efficiency means more power generated per unit of water consumed.
-- Higher values mean they consume more water, resulting in energy being produced faster.
-- Higher values also means less generators on a chain.
  bobmods.config.power.steamengine1 = {effectivity = 1, fluid_usage_per_tick = 0.1}
  bobmods.config.power.steamengine2 = {effectivity = 2, fluid_usage_per_tick = 0.075}
  bobmods.config.power.steamengine3 = {effectivity = 4, fluid_usage_per_tick = 0.05}
end





if bobmods.config.logistics.OverideRobotValues then
  bobmods.config.logistics.logisticrobot1 = {
    max_health = 100,
    max_payload_size = 1,
    speed = 0.05,
    max_energy = "1500kJ",
    energy_per_tick = "50J",
    energy_per_move = "5000J"
  }

  bobmods.config.logistics.logisticrobot2 = {
    max_health = 150,
    max_payload_size = 2,
    speed = 0.1,
    max_energy = "3000kJ",
    energy_per_tick = "40J",
    energy_per_move = "4000J"
  }

  bobmods.config.logistics.logisticrobot3 = {
    max_health = 200,
    max_payload_size = 4,
    speed = 0.15,
    max_energy = "4500kJ",
    energy_per_tick = "30J",
    energy_per_move = "3000J"
  }

  bobmods.config.logistics.logisticrobot4 = {
    max_health = 250,
    max_payload_size = 8,
    speed = 0.2,
    max_energy = "6000kJ",
    energy_per_tick = "20J",
    energy_per_move = "2000J"
  }


  bobmods.config.logistics.constructionrobot1 = {
    max_health = 100,
    max_payload_size = 1,
    speed = 0.06,
    max_energy = "1500kJ",
    energy_per_tick = "50J",
    energy_per_move = "5000J"
  }

  bobmods.config.logistics.constructionrobot2 = {
    max_health = 200,
    max_payload_size = 2,
    speed = 0.12,
    max_energy = "3000kJ",
    energy_per_tick = "40J",
    energy_per_move = "4000J"
  }

  bobmods.config.logistics.constructionrobot3 = {
    max_health = 300,
    max_payload_size = 3,
    speed = 0.18,
    max_energy = "4500kJ",
    energy_per_tick = "30J",
    energy_per_move = "3000J"
  }

  bobmods.config.logistics.constructionrobot4 = {
    max_health = 400,
    max_payload_size = 4,
    speed = 0.24,
    max_energy = "6000kJ",
    energy_per_tick = "20J",
    energy_per_move = "2000J"
  }
end



