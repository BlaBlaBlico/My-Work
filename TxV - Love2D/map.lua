

function map_collide()
	--The two players collision:
	if player_1.x < 0 then
		player_1.x = 0
	end
	if player_1.x + player_1.width > love.graphics.getWidth() then
		player_1.x = love.graphics.getWidth() - player_1.width
	end
	if player_2.x < 0 then
		player_2.x = 0
	end
	if player_2.x + player_2.width > love.graphics.getWidth() then
		player_2.x = love.graphics.getWidth() - player_2.width
	end
    
    --The bullets collision:
	for i, v in ipairs(bullet) do
	    if v.y < 0 or
	    v.y > love.graphics.getHeight() then
            table.remove(bullet, i)
	 	end
	end
    
    --The obstacles collision:
	for i, v in ipairs(obstacle) do
	    if obstacle.dir == 1 and v.x > 800 then
		    table.remove(obstacle, i)
	    elseif obstacle.dir == 2 and v.x < 0 - v.width then
		    table.remove(obstacle, i)
	    end
    end
end