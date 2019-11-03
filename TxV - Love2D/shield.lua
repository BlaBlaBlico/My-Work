

--Player #1:
shield_1 = {
	width = 15,
	height = 3,
	state = "off",
	timer = 3,
	timer_state = "off"
}

--Player #2:
shield_2 = {
	width = 15,
	height = 3,
	state = "off",
	timer = 3,
	timer_state = "off"
}

function shield_update(dt)
	--Player #1:
    if shield_1.state == "on" and shield_1.timer_state == "off" then
    	shield_1.timer = shield_1.timer - dt
    	if shield_1.timer < 0 then
    		shield_1.timer = 0
    	end
    end
    if math.floor(shield_1.timer) == 0 then
    	shield_1.timer_state = "on"
    end
    if math.floor(shield_1.timer) ~= 5 and shield_1.timer_state == "on" then
    	shield_1.timer = shield_1.timer + dt
    end
    if math.floor(shield_1.timer) == 5 then
    	shield_1.timer_state = "off"
    	shield_1.timer = 3
    end
    --Player #2:
    if shield_2.state == "on" and shield_2.timer_state == "off" then
    	shield_2.timer = shield_2.timer - dt
    	if shield_2.timer < 0 then
    		shield_2.timer = 0
    	end
    end
    if math.floor(shield_2.timer) == 0 then
    	shield_2.timer_state = "on"
    end
    if math.floor(shield_2.timer) ~= 5 and shield_2.timer_state == "on" then
    	shield_2.timer = shield_2.timer + dt
    end
    if math.floor(shield_2.timer) == 5 then
    	shield_2.timer_state = "off"
    	shield_2.timer = 3
    end
end

function shield_draw()
	love.graphics.setColor(0, 255, 255)
	--Player #1:
	if shield_1.state == "on" and shield_1.timer_state == "off" then
        love.graphics.rectangle("fill", player_1.x, player_1.y + 18, shield_1.width, shield_1.height)
    end
    --Player #2:
    if shield_2.state == "on" and shield_2.timer_state == "off" then
        love.graphics.rectangle("fill", player_2.x, player_2.y - 6, shield_2.width, shield_2.height)
    end
end

function shield_on(key)
	--Player #1:
	if gamestate == "m_playing" then
	    if key == "s" and player_1.dead == "no" and player_1.immortal == "no" then
		    shield_1.state = "on"
	    end
	elseif gamestate == "s_playing" then
		if player_AI.shield == "on" then
			shield_1.state = "on"
		end
	end
	--Player #2:
	if key == "down" and player_2.dead == "no" and player_2.immortal == "no" then
		shield_2.state = "on"
	end
end

function shield_off(key)
	--Player #1:
	if gamestate == "m_playing" then
	    if key == "s" and shield_1.state == "on" then
		    shield_1.state = "off"
	    end
	elseif gamestate == "s_playing" then
		if player_AI.shield == "off" then
			shield_1.state = "off"
		end
	end
	--Player #2:
	if key == "down" and shield_2.state == "on" then
		shield_2.state = "off"
	end
end

