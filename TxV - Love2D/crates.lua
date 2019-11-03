



default = love.graphics.newFont(12)

crate = {
	x = 0,
	y = 0,
	letter = {
	    font = love.graphics.newFont(10),
	    tag_num = 0,
	    tag = "A",
	    tag_color = {0, 0, 0}
    },
    spawn = "no",
    --Timers:
    timer = 0,
    num_1 = 0,
    num_2 = 0,
    generate = "no",
    status = "running",
    delay = 0
}

function crate_create (x, y, letter, letter_color)
	table.insert(crate, {x = x, y = y, width = 15, height = 15, letter = letter, letter_color = letter_color, letter_x = x + 3.5, letter_y = y + 1, visible = "yes", crate_timer_state = "off", crate_timer = 0, bonus_timer_state = "off", bonus_timer = 0, time = 0})
end

function crate_draw()
    if crate.letter.tag_num == 1 then
    	crate.letter.tag = "S"
    elseif crate.letter.tag_num == 2 then
        crate.letter.tag = "B"
    end
	if crate.spawn == "yes" then
		if crate.letter.tag_num == 1 then
    	    crate.letter.tag_color = {51, 255, 255}
        elseif crate.letter.tag_num == 2 then
            crate.letter.tag_color = {255, 128, 0}
        end
		crate_create(crate.x, crate.y, crate.letter.tag, crate.letter.tag_color)
		for i, v in ipairs(crate) do
       	    v.crate_timer_state = "on"
       	end
		crate.spawn = "no"
	end

	for i, v in ipairs(crate) do
		--love.graphics.print(v.bonus_timer, 400, 40)
		--love.graphics.print(v.crate_timer, 200, 40)
		if v.visible == "yes" then
		    love.graphics.setColor(255, 153, 51)
		    love.graphics.rectangle("line", v.x, v.y, v.width, v.height)
		    love.graphics.setColor(v.letter_color)
		    love.graphics.setFont(crate.letter.font)
		    love.graphics.print(v.letter, v.letter_x, v.letter_y)
		    love.graphics.setFont(default)
		end
	end
end

function crate_spawn(dt)
    crate.timer = crate.timer + dt

    if math.floor(crate.timer) % 2 == 0 then
    	crate.generate = "yes"
    	crate.num_1 = math.random(1, 6)
    	crate.num_2 = math.random(1, 6)
    else
    	crate.generate = "no"
    end
    if ((crate.num_1 == 3 and crate.num_2 == 2) or (crate.num_1 == 6 and crate.num_2 == 1) or (crate.num_1 == 3 and crate.num_2 == 6)) and crate.generate == "no" then
    	crate.x = math.random(0, 785)
        crate.letter.tag_num = math.random(1, 2)
    	crate.y = math.random(150, 345)
    	for i, v in ipairs(obstacle) do
    		while CheckCollision(crate.x, crate.y, 15, 15, v.x, v.y, v.width, v.height) do
    			crate.y = math.random(150, 345)
    		end
    	end
    	crate.status = "stopped"
    	crate.delay = 1
    end
    if crate.status == "stopped" then
        crate.delay = crate.delay - dt
        if crate.delay < 0 then
            crate.status = "running"
            crate.delay = 0
            crate.spawn = "yes"
        end
    end
end

function crate_update(dt)
	for i, v in ipairs(crate) do
        if v.bonus_timer_state == "on" then
    	    v.bonus_timer = v.bonus_timer + dt
        end
        if v.crate_timer_state == "on" then
        	v.crate_timer = v.crate_timer + dt
        end
    end
    for i, v in ipairs(crate) do
    	if v.crate_timer > 13 and v.bonus_timer_state == "off" then
    		table.remove(crate, i)
    	end
    end

    --[[for i, v in ipairs(crate) do
    	for c, j in ipairs(obstacle) do
    	    if CheckCollision(v.x, v.y, v.width, v.height, j.x, j.y, j.width, j.height) and j.dir == 1 then
    	    	j.dir = 2
    	    elseif CheckCollision(v.x, v.y, v.width, v.height, j.x, j.y, j.width, j.height) and j.dir == 2 then
    	    	j.dir = 1
    	    end
    	end
    end]]
    --Player #1:
    for i, v in ipairs(bullet) do
		for c, j in ipairs(crate) do
	        if CheckCollision(v.x, v.y, 3, 3, j.x, j.y, j.width, j.height) and j.bonus_timer == 0 and j.visible == "yes" and v.dir == "down" then
	        	table.remove(bullet, i)
	    	    j.visible = "no"
	    	    if j.letter == "S" then
	    	        player_1.speed = 400
	    	        j.time = 5
	    	    elseif j.letter == "B" then
	    	    	bullet.delay_1 = "no"
	    	    	bullet.speed = 500
	    	    	j.time = 10
	    	    end
                j.bonus_timer_state = "on"
            end
        end
    end
    for i, v in ipairs(crate) do
    	if v.bonus_timer > v.time and (player_1.speed == 400 or bullet.delay_1 == "no") then
    		if v.letter == "S" then
    			player_1.speed = 200
    	    elseif v.letter == "B" then
                bullet.delay_1 = "yes"
                bullet.speed = 690
            end
    		table.remove(crate, i)
        end
    end
    --Player #2:
	for i, v in ipairs(bullet) do
		for c, j in ipairs(crate) do
	        if CheckCollision(v.x, v.y, 3, 3, j.x, j.y, j.width, j.height) and j.bonus_timer == 0 and j.visible == "yes" and v.dir == "up" then
	        	table.remove(bullet, i)
	    	    j.visible = "no"
	    	    if j.letter == "S" then
	    	        player_2.speed = 400
	    	        j.time = 5
	    	    elseif j.letter == "B" then
	    	    	bullet.delay_2 = "no"
	    	    	bullet.speed = 500
	    	    	j.time = 10
	    	    end
                j.bonus_timer_state = "on"
            end
        end
    end
    for i, v in ipairs(crate) do
    	if v.bonus_timer > v.time and (player_2.speed == 400 or bullet.delay_2 == "no") then
    		if v.letter == "S" then
    			player_2.speed = 200
    	    elseif v.letter == "B" then
                bullet.delay_2 = "yes"
                bullet.speed = 690
            end
    		table.remove(crate, i)
        end
    end
end