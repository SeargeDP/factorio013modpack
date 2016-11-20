require( "config" )

function new_size( oldvalue, offset, factor )
	if oldvalue == nil then oldvalue = 1 end
	local v = offset + oldvalue * factor
	if v > oldvalue then
		return( v )
	else
		return oldvalue
	end
end

-- running speed
if my_running_speed_factor and my_running_speed_factor ~= 1 and data.raw.player.player.running_speed == 0.15 then data.raw.player.player.running_speed = 0.15 * my_running_speed_factor end

-- item stacks
for _,dat in pairs(data.raw) do
	for _,item in pairs(dat) do
		if item.stack_size and type(item.stack_size) == "number" and item.stack_size > 1 then
			item.stack_size = new_size( item.stack_size, my_stack_offset, my_stack_factor )	
			if my_default_req_amount ~= nil then
				item.default_request_amount = my_default_req_amount
			end
		end
	end
end

-- ammo stacks
for _, ammo in pairs(data.raw.ammo) do
	-- ammo.stack_size = new_size( ammo.stack_size, my_stack_offset, my_stack_factor )	-- ammo are already modified in the previsous loop
	ammo.magazine_size = new_size( ammo.magazine_size, my_mag_offset, my_mag_factor )	
	if my_default_req_amount then ammo.default_request_amount = my_default_req_amount end
end

-- module stacks
for _, modu in pairs(data.raw["module"]) do
	modu.stack_size = new_size( modu.stack_size, my_stack_offset, my_stack_factor )	
end

-- capsule stacks
for _, caps in pairs(data.raw["capsule"]) do
	caps.stack_size = new_size( caps.stack_size, my_stack_offset, my_stack_factor )	
end


