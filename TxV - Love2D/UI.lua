

function shield_display()
	--Player #1:
	love.graphics.setColor(255, 255, 255)
	love.graphics.print("Shield", 5, 5)
	love.graphics.setColor(204, 0, 204)
	if shield_1.timer_state == "off" then
	    love.graphics.rectangle("fill", 46, 8, 5, 8)
    end
    if shield_1.timer > 2 and shield_1.timer_state == "off" or shield_1.timer == 3 then
	    love.graphics.rectangle("fill", 52, 8, 5, 8)
	end
	if shield_1.timer == 3 then
	    love.graphics.rectangle("fill", 58, 8, 5, 8)
	end
    --Player #2:
	love.graphics.setColor(255, 255, 255)
	love.graphics.print("Shield", 5, 484)
	love.graphics.setColor(204, 0, 204)
	if shield_2.timer_state == "off" then
	    love.graphics.rectangle("fill", 46, 487, 5, 8)
    end
    if shield_2.timer > 2 and shield_2.timer_state == "off" or shield_2.timer == 3 then
	    love.graphics.rectangle("fill", 52, 487, 5, 8)
	end
	if shield_2.timer == 3 then
	    love.graphics.rectangle("fill", 58, 487, 5, 8)
	end
end

function player_display()
    --Player #1:
	love.graphics.setColor(255, 255, 255)
	love.graphics.print("Life", 75, 5)
    love.graphics.setColor(255, 0, 0)
    if player_1.life >= 1 then
        love.graphics.rectangle("fill", 99, 8, 5, 8)
    end
    if player_1.life >= 2 then
        love.graphics.rectangle("fill", 105, 8, 5, 8)
    end
    if player_1.life == 3 then
        love.graphics.rectangle("fill", 111, 8, 5, 8)
    end
    love.graphics.setColor(255, 255, 255)
    if love.keyboard.isDown("a") and gamestate == "playing" then
    	love.graphics.setColor(68, 0, 255)
    end
    love.graphics.print("A", 130, 5)
    love.graphics.setColor(255, 255, 255)
    if love.keyboard.isDown("d") and gamestate == "playing" then
    	love.graphics.setColor(68, 0, 255)
    end
    love.graphics.print("D", 150, 5)
    love.graphics.setColor(255, 255, 255)
    if love.keyboard.isDown("w") and gamestate == "playing" then
    	love.graphics.setColor(68, 0, 255)
    end
    love.graphics.print("W", 170, 5)
    love.graphics.setColor(255, 255, 255)
    if love.keyboard.isDown("s") and gamestate == "playing" then
    	love.graphics.setColor(68, 0, 255)
    end
    love.graphics.print("S", 190, 5)
    --Player #2:
    love.graphics.setColor(255, 255, 255)
	love.graphics.print("Life", 75, 484)
    love.graphics.setColor(255, 0, 0)
    if player_2.life >= 1 then 
        love.graphics.rectangle("fill", 99, 487, 5, 8)
    end
    if player_2.life >= 2 then
        love.graphics.rectangle("fill", 105, 487, 5, 8)
    end
    if player_2.life == 3 then
        love.graphics.rectangle("fill", 111, 487, 5, 8)
    end
    love.graphics.setColor(255, 255, 255)
    if love.keyboard.isDown("left") and gamestate == "playing" then
    	love.graphics.setColor(17, 255, 0)
    end
    love.graphics.print("<", 130, 484)
    love.graphics.setColor(255, 255, 255)
    if love.keyboard.isDown("right") and gamestate == "playing" then
    	love.graphics.setColor(17, 255, 0)
    end
    love.graphics.print(">", 150, 484)
    love.graphics.setColor(255, 255, 255)
    if love.keyboard.isDown("up") and gamestate == "playing" then
    	love.graphics.setColor(17, 255, 0)
    end
    love.graphics.print("/\\", 170, 484)
    love.graphics.setColor(255, 255, 255)
    if love.keyboard.isDown("down") and gamestate == "playing" then
    	love.graphics.setColor(17, 255, 0)
    end
    love.graphics.print("\\/", 190, 484)
end