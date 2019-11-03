

bullet = {
    width = 3,
    height = 3,
	speed = 600,
	delay_1 = "yes",
	delay_2 = "yes",
	timer_1 = 0, --Player #1:
	timer_2 = 0 --Player #2:
}

function bullet_spawn(x, y, dir)
	table.insert(bullet, {x = x, y = y, dir = dir})
end

function bullet_draw()
	--Bullet draw:
	for i, v in ipairs(bullet) do
		love.graphics.setColor(255, 128, 0)
        love.graphics.rectangle("fill", v.x, v.y, bullet.width, bullet.height)
	end
end

function bullet_update(dt)
	--Player #1:
	if bullet.delay_1 == "yes" then
	    bullet.timer_1 = bullet.timer_1 - dt
	    while bullet.timer_1 < 0 do
		    bullet.timer_1 = 0
	    end
	end
	if bullet.delay_1 == "no" then
		bullet.timer_1 = 0
	end
	for i, v in ipairs(bullet) do
		if v.dir == "down" then
			v.y = v.y + bullet.speed * dt
		end
		if CheckCollision(player_1.x, player_1.y, shield_1.width, shield_1.height + 18, v.x, v.y, 3, 3) and shield_1.state == "on" and shield_1.timer_state == "off" then
			table.remove(bullet, i)
			love.audio.play(shield_hit)
		end
	end
	--Player #2:
	if bullet.delay_2 == "yes" then
	    bullet.timer_2 = bullet.timer_2 - dt
	    while bullet.timer_2 < 0 do
		    bullet.timer_2 = 0
	    end
	end
	if bullet.delay_2 == "no" then
		bullet.timer_2 = 0
    end
	for i, v in ipairs(bullet) do
        if v.dir == "up" then
			v.y = v.y - bullet.speed * dt
		end
		if CheckCollision(player_2.x, player_2.y - 6, shield_2.width, shield_2.height + 18, v.x, v.y, 3, 3) and shield_2.state == "on" and shield_2.timer_state == "off" then
			table.remove(bullet, i)
			love.audio.play(shield_hit)
		end
	end


	if gamestate == "s_playing" then
		if player_AI.fire == "yes" and shield_1.state == "off" and bullet.timer_1 == 0 and player_1.dead == "no" and player_1.immortal == "no" then
		    bullet_spawn(player_1.x + player_1.width / 2 - bullet.width / 2, player_1.y + player_1.height, "down")
		    if bullet.delay_1 == "yes" then
		        love.audio.play(shoot)
		    else
			    love.audio.play(rapid_shoot)
		    end
		    if bullet.timer_1 == 0 and bullet.delay_1 == "yes" then
		        bullet.timer_1 = 1
		    end
	    end
	end
end

function bullet_shoot(key)
	--Player #1:
	if gamestate == "m_playing" then
	    if key == "w" and shield_1.state == "off" and bullet.timer_1 == 0 and player_1.dead == "no" and player_1.immortal == "no" then
		    bullet_spawn(player_1.x + player_1.width / 2 - bullet.width / 2, player_1.y + player_1.height, "down")
		    if bullet.delay_1 == "yes" then
		        love.audio.play(shoot)
		    else
			    love.audio.play(rapid_shoot)
		    end
		    if bullet.timer_1 == 0 and bullet.delay_1 == "yes" then
		        bullet.timer_1 = 1
		    end
	    end
	elseif gamestate == "s_playing" then
		if player_AI.fire == "yes" and shield_1.state == "off" and bullet.timer_1 == 0 and player_1.dead == "no" and player_1.immortal == "no" then
		    bullet_spawn(player_1.x + player_1.width / 2 - bullet.width / 2, player_1.y + player_1.height, "down")
		    if bullet.delay_1 == "yes" then
		        love.audio.play(shoot)
		    else
			    love.audio.play(rapid_shoot)
		    end
		    if bullet.timer_1 == 0 and bullet.delay_1 == "yes" then
		        bullet.timer_1 = 1
		    end
	    end
	end
	--Player #2:
	if key == "up" and shield_2.state == "off" and bullet.timer_2 == 0 and player_2.dead == "no" and player_2.immortal == "no" then
		bullet_spawn(player_2.x + player_2.width / 2 - bullet.width / 2, player_2.y - 3, "up")
		if bullet.delay_2 == "yes" then
		    love.audio.play(shoot)
		else
			love.audio.play(rapid_shoot)
		end
		if bullet.timer_2 == 0 and bullet.delay_2 == "yes" then
			bullet.timer_2 = 1
		end
	end
end