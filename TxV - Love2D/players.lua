

--Player #1:
player_1 = {
    width = 15,
    height = 15,
	x = 25,
	y = 25,
	speed = 200,
	dead = "no",
	life = 3,
	spawn = "off",
	immortal = "no",
	timer = 0
}

--Player #2:
player_2 = {
    width = 15,
    height = 15,
	x = 760,
	y = 460,
	speed = 200,
	dead = "no",
	life = 3,
	spawn = "off",
	immortal = "no",
	timer = 0
}

function player_update(dt)
    --Player #1:
	for i, v in ipairs(bullet) do
	    if CheckCollision(player_1.x, player_1.y, player_1.width, player_1.height, v.x, v.y, 3, 3) and player_1.immortal == "no" then
	    	love.audio.play(dead)
	    	table.remove(bullet, i)
	    	player_1.dead = "yes"
	    	player_1.life = player_1.life - 1
	    	player_1.spawn = "on"
        end
	end
	if player_1.spawn == "on" then
	    player_1.timer = player_1.timer + dt
	end
	if math.floor(player_1.timer) == 1 then
		player_1.x = love.graphics.getWidth() / 2
		player_1.dead = "no"
	    player_1.immortal = "yes"
	end
	if math.floor(player_1.timer) == 3 then
		love.audio.play(revive)
	end
	if math.floor(player_1.timer) == 4 then
		player_1.immortal = "no"
		player_1.spawn = "off"
		player_1.timer = 0
	end
    --Player #2
    for i, v in ipairs(bullet) do
        if CheckCollision(player_2.x, player_2.y, player_2.width, player_2.height, v.x, v.y, 3, 3) and player_2.immortal == "no" then
            love.audio.play(dead)
            table.remove(bullet, i)
            player_2.dead = "yes"
            player_2.life = player_2.life - 1
            player_2.spawn = "on"
        end
    end
	if player_2.spawn == "on" then
		player_2.timer = player_2.timer + dt
	end
	if math.floor(player_2.timer) == 1 then
		player_2.x = love.graphics.getWidth() / 2
		player_2.dead = "no"
		player_2.immortal = "yes"
	end
	if math.floor(player_2.timer) == 3 then
		love.audio.play(revive)
	end
	if math.floor(player_2.timer) == 4 then
		player_2.immortal = "no"
		player_2.spawn = "off"
		player_2.timer = 0
	end
end

function player_draw()
    --Player #1:
	if player_1.dead == "no" then
		if player_1.immortal == "no" then
	        love.graphics.setColor(68, 0, 255)
	    end
	    if player_1.immortal == "yes" then
	    	love.graphics.setColor(68, 0, 255, 50)
	    end
        love.graphics.rectangle("fill", player_1.x, player_1.y, player_1.width, player_1.height)
    end
    --Player #2:
    if player_2.dead == "no" then
    	if player_2.immortal == "no" then
            love.graphics.setColor(17, 255, 0)
        end
        if player_2.immortal == "yes" then
        	love.graphics.setColor(17, 255, 0, 50)
        end
        love.graphics.rectangle("fill", player_2.x, player_2.y, player_2.width, player_2.height)
    end
end

function player_move(dt)
    --Player #1:
    if gamestate == "m_playing" then
	    if love.keyboard.isDown("a") then
		    player_1.x = player_1.x - player_1.speed * dt
	    end
	    if love.keyboard.isDown("d") then
		    player_1.x = player_1.x + player_1.speed * dt
	    end
	elseif gamestate == "s_playing" then
        if player_AI.movement == "left" then
        	player_1.x = player_1.x - player_1.speed * dt
        end
        if player_AI.movement == "right" then
        	player_1.x = player_1.x + player_1.speed * dt
        end
    end
    --Player #2:
	if love.keyboard.isDown("left") then
		player_2.x = player_2.x - player_2.speed * dt
	end
	if love.keyboard.isDown("right") then
		player_2.x = player_2.x + player_2.speed * dt
	end
end