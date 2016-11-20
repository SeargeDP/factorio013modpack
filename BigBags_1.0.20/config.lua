---------------------------------------------------------------------------------------------
-- changes stack size for every item
-- (formula : new_stack_size = my_stack_offset + my_stack_factor * old_stack_size)

my_stack_offset = 0	   		-- multiply every stack size by 10
my_stack_factor = 10	  	

-- my_stack_offset = 0		-- does not change anything
-- my_stack_factor = 1  	

-- my_stack_offset = 500	-- set every stack size to 500 (old setting in v1.0.5)
-- my_stack_factor = 0			 

-- my_stack_offset = 100	-- multiply every stack size by 5 and add 100
-- my_stack_factor = 5  	

---------------------------------------------------------------------------------------------
-- changes default magazine size for every ammo
-- (formula : new_mag_size = my_mag_offset + my_mag_factor * old_mag_size)

my_mag_offset = 0             
my_mag_factor = 10			 

-- my_mag_offset = 0		-- does not change anything
-- my_mag_factor = 1  	

---------------------------------------------------------------------------------------------
my_default_req_amount = 10	  -- to change default request amount in character logistic slots

---------------------------------------------------------------------------------------------
my_running_speed_factor = 1   -- multiplicative factor, if > 1, your running speed is increased for free

