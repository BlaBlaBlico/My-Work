



obstacle = {
	y = 0,
	width = 0,
	speed = 0,
	dir = 0,
	spawn = "no",
    --RGB:
	r = 0,
	g = 0,
	b = 0,
    --obstacle.timers:
    timer = 0,
    num = 0,
    generate = "no",
    status = "running",
    delay = 0
}

function obstacle_spawn(x, y, width, speed, spawn, dir, r, g, b)
	table.insert(obstacle, {x = x, y = y, width = width, height = 5, speed = speed, spawn = spawn, dir = dir, r = r, g = g, b = b})
end

function obstacle_draw()
    -- love.graphics.print(obstacle.num, 760, 5)

    if obstacle.dir == 1 and obstacle.spawn == "yes" then
        obstacle_spawn(-100, obstacle.y, obstacle.width, obstacle.speed, obstacle.spawn, obstacle.dir, obstacle.r, obstacle.g, obstacle.b)
        obstacle.spawn = "no"
    elseif obstacle.dir == 2 and obstacle.spawn == "yes" then
        obstacle_spawn(900, obstacle.y, obstacle.width, obstacle.speed, obstacle.spawn, obstacle.dir, obstacle.r, obstacle.g, obstacle.b)
        obstacle.spawn = "no"
    end

    for i, v in ipairs(obstacle) do
	    love.graphics.setColor(v.r, v.g, v.b)
        love.graphics.rectangle("fill", v.x, v.y, v.width, v.height)
    end
end

function obstacle_move(dt)
    obstacle.timer = obstacle.timer + dt
    
    if math.floor(obstacle.timer) % 2 == 0 then
        obstacle.generate = "yes"
        obstacle.num = math.random(1, 6)
    else
    	obstacle.generate = "no"
    end
    if (obstacle.num == 3 or obstacle.num == 6) and obstacle.generate == "no" then
    	obstacle.r = math.random(1, 255)
    	obstacle.g = math.random(1, 255)
    	obstacle.b = math.random(1, 255)
        obstacle.width = math.random(10, 90)
        obstacle.speed = math.random(50, 100)
        obstacle.y = math.random(200, 300)
        obstacle.dir = math.random(1, 2)
        obstacle.status = "stopped"
        obstacle.delay = 1
    end
    if obstacle.status == "stopped" then
        obstacle.delay = obstacle.delay - dt
        if obstacle.delay < 0 then
            obstacle.status = "running"
            obstacle.delay = 0
            obstacle.spawn = "yes"
        end
    end

    for i, v in ipairs(obstacle) do
        if v.dir == 1 --[[and v.spawn == "yes"]] then
	        v.x = v.x + v.speed * dt
	    elseif v.dir == 2 --[[and v.spawn == "yes"]] then
	    	v.x = v.x - v.speed * dt
	    end
	end

    for i, v in ipairs(bullet) do
    	for i, j in ipairs(obstacle) do
	        if CheckCollision(j.x, j.y, j.width, j.height, v.x, v.y, 3, 3) and v.dir == "down" then
	    	    v.dir = "up"
	        elseif CheckCollision(j.x, j.y, j.width, j.height, v.x, v.y, 3, 3) and v.dir == "up" then
	    	    v.dir = "down"
	        end
	    end
	end
end
