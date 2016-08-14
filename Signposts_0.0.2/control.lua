require "util"

function onInit()
    global.sign_texts = {}
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

function getSignpostText(entity)
    local wrap = global.sign_texts[positionToString(entity.position)]
    
    if wrap then
        return wrap.text
    else
        return ""
    end
end

function setSignpostText(entity, text)
    global.sign_texts[positionToString(entity.position)] = {entity=entity, text=text}
end

function onBuiltEntity(event)
    local player = nil
    
    if event.player_index then
        player = game.players[event.player_index]
    else
        return
    end

    if event.created_entity.name == "sign-post" then
        -- remove unused signposts
        for pos, wrap in pairs(global.sign_texts) do
            if not wrap.entity.valid then
                global.sign_texts[pos] = nil
            end
        end

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

script.on_event("hotkey_read_sign_post", function(event)
    local player = game.players[event.player_index]
    local selection = player.selected

    if selection and selection.name == "sign-post" then
        local frame = player.gui.center["sign-post-read"]

        if not frame then
            local sign_post_text = getSignpostText(selection)
        
            frame = player.gui.center.add{type="frame", name="sign-post-read", caption={"sign-post-read-title"}, direction="vertical"}
            local line_size = 100
            local from_char = 0
            local to_char = line_size

            while true do
                local line = string.sub(sign_post_text, from_char, to_char)
                
                if line == nil or line == "" then
                    break
                end
                
                frame.add{type="label", name="sign-post-text-" .. from_char, caption=line}
                from_char = to_char + 1
                to_char = to_char + line_size + 1
            end

            frame.add{type="button", name="sign-post-ok", caption={"sign-post-ok"}}
        end
    end
end)

script.on_event(defines.events.on_built_entity, onBuiltEntity)
script.on_event(defines.events.on_gui_click, onGuiClick)
