require "util"

function onInit()
    global.signs = {}
    global.last_built_signpost = {}
end

function onConfigurationChanged(data)
    -- nothing
end

script.on_init(onInit)
script.on_configuration_changed(onConfigurationChanged)

function positionToString(pos)
    return "x" .. math.floor(pos.x) .. "y" .. math.floor(pos.y)
end


function printToAll(text)
	for _,player in pairs(game.players) do -- for loop
		player.print(text)
	end
end

script.on_event(defines.events.on_tick, function(event)

	if event.tick % 20 == 0 then
		local signs = global.signs
		for i=#signs,1,-1 do
			if not signs[i].entity.valid then
				table.remove(signs, i)
			else
				local wrap = signs[i]
				local pos = wrap.entity.position
				local players = wrap.entity.surface.find_entities_filtered{area={{pos.x-2, pos.y-2},{pos.x+2, pos.y+2}}, type='player'}
				
				
				if #players == 0 then
					if #wrap.nearby ~= 0 then
						wrap.nearby = {}
					end
				else	
					for k,v in pairs(players) do
						if wrap.nearby[v.player.index] then
							-- do nothing
						else
							v.player.print(wrap.text)
						end
					end
					
					if #wrap.nearby ~= 0 then
						wrap.nearby = {}
					end
					
					for k,v in pairs(players) do
						wrap.nearby[v.player.index] = true
					end
				end
			end
		end
	end
end)


function setSignpostText(entity, text)
	local wrap = {}
	wrap.nearby = {}
	wrap.text = text
	wrap.entity = entity
	
	global.signs[#global.signs+1] = wrap
end

function onBuiltEntity(event)
    local player = nil
    
    if event.player_index then
        player = game.players[event.player_index]
    else
        return
    end

    if event.created_entity.name == "sign-post" then

        local frame = player.gui.center["sign-post-create"]

        if not frame then
            global.last_built_signpost[event.player_index] = event.created_entity

            frame = player.gui.center.add{type="frame", name="sign-post-create", caption={"sign-post-create-title"}, direction="vertical"}
            frame.add{type="textfield", name="sign-post-text"}
            frame.add{type="button", name="sign-post-ok", caption={"sign-post-ok"}}
        end
    end
end

function onGuiClick(event)
    local player = game.players[event.player_index]
	local frame = player.gui.center["sign-post-create"]
    local read_frame = player.gui.center["sign-post-read"]
    
    if frame and event.element.parent == frame then
        if event.element.name == "sign-post-ok" then
            local signpost = global.last_built_signpost[event.player_index]
            
            if signpost and signpost.valid then
                setSignpostText(signpost, string.sub(frame["sign-post-text"].text, 0, 1000))
            end
        
            frame.destroy()
        end
    elseif read_frame and event.element.parent == read_frame then
        if event.element.name == "sign-post-ok" then
            read_frame.destroy()
        end
    end
end

script.on_event(defines.events.on_built_entity, onBuiltEntity)
script.on_event(defines.events.on_gui_click, onGuiClick)
