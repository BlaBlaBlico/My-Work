

player_AI = {
    timer = 0,
    status = "running",
    delay = 0,

    random = 0,

	movement = nil,
	shield = "off",
	fire = "no",
    fire_force_stop = "off"
}

function AI_update(dt)
    if gamestate == "s_playing" then
    	player_AI.timer = player_AI.timer + dt
    end
    
    player_AI.random = math.random(1, 2)

    if math.floor(player_AI.timer) == 1 then
    	player_AI.movement = "right"
    end
    if CheckCollision(player_1.x + 7, player_1.y + 400, 1, 115, player_2.x + 7, player_2.y, 1, player_2.height) and
       player_AI.fire_force_stop == "off" then
	    player_AI.fire = "yes"
	    player_AI.status = "stopped"
	    player_AI.delay = 0.3
    end
    if player_AI.status == "stopped" then
        player_AI.delay = player_AI.delay - dt
        if player_AI.delay < 0 then
            player_AI.fire = "no"
            if player_AI.movement == "left" and player_2.dead == "no" and player_2.immortal == "no" and player_AI.random ~= 2 then
                player_AI.movement = "right"
            elseif player_AI.movement == "right" and player_2.dead == "no" and player_2.immortal == "no" and player_AI.random ~= 2 then
                player_AI.movement = "left"
            end
            player_AI.status = "running"
            player_AI.delay = 0
        end
    end

    if player_1.x < 3 then
    	player_AI.movement = "right"
    elseif player_1.x + player_1.width > love.graphics.getWidth() - 3 then
        player_AI.movement = "left"
    end

    -----
    for i, v in ipairs(obstacle) do
        if CheckCollision(player_1.x + 7, 200, 1, 105, v.x - 50, v.y, v.width + 100, v.height) then
            player_AI.fire_force_stop = "on"
        else
            player_AI.fire_force_stop = "off"
        end
    end
end