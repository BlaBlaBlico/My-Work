

button_menu = {}
button_pause = {}

state = nil

-- Menu buttons:
function button_spawn_m(x, y, text, id)
	table.insert(button_menu, {x = x, y = y, text = text, id = id, mouseover = false})
end

function button_draw_m()
	for i, v in ipairs(button_menu) do
		if v.mouseover == false then
		    love.graphics.setColor(255, 255, 255)
	    end
	    if v.mouseover == true then
	    	love.graphics.setColor(0, 0, 255)
	    end
		love.graphics.print(v.text, v.x, v.y)
	end
end

function button_click_m(x, y)
	for i, v in ipairs(button_menu) do
		if x > v.x and
		x < v.x + love.graphics.newFont(12):getWidth(v.text) and
		y > v.y and
		y < v.y + love.graphics.newFont(12):getHeight(v.text) then
		    if v.id == "play_s" then
		    	gamestate = "s_playing"
		    	state = "s"
		    end
		    if v.id == "play_m" then
                gamestate = "m_playing"
                state = "m"
            end
		    if v.id == "quit" then
		        love.event.push("quit")
		    end
        end
	end
end

function button_check_m()
	for i, v in ipairs(button_menu) do
		if mousex > v.x and
		mousex < v.x + love.graphics.newFont(12):getWidth(v.text) and
		mousey > v.y and
		mousey < v.y + love.graphics.newFont(12):getHeight(v.text) then
		    v.mouseover = true
		else
			v.mouseover = false
		end
	end
end

-- Pause buttons:
function button_spawn_p(x, y, text, id)
	table.insert(button_pause, {x = x, y = y, text = text, id = id, mouseover = false})
end

function button_draw_p()
	for i, v in ipairs(button_pause) do
		if v.mouseover == false then
		    love.graphics.setColor(255, 255, 255)
	    end
	    if v.mouseover == true then
	    	love.graphics.setColor(0, 0, 255)
	    end
		love.graphics.print(v.text, v.x, v.y)
	end
end

function button_click_p(x, y)
	for i, v in ipairs(button_pause) do
		if x > v.x and
		x < v.x + love.graphics.newFont(12):getWidth(v.text) and
		y > v.y and
		y < v.y + love.graphics.newFont(12):getHeight(v.text) then
		    if v.id == "quit" then
		        love.event.push("quit")
		    end
		    if v.id == "resume" then
		    	if state == "s" then
		    		gamestate = "s_playing"
		    	elseif state == "m" then
		            gamestate = "m_playing"
		        end
		    end
		    if v.id == "restart" then
		    	love.load()
		    	love.update(dt)
		    	love.draw()
		    end
        end
	end
end

function button_check_p()
	for i, v in ipairs(button_pause) do
		if mousex > v.x and
		mousex < v.x + love.graphics.newFont(12):getWidth(v.text) and
		mousey > v.y and
		mousey < v.y + love.graphics.newFont(12):getHeight(v.text) then
		    v.mouseover = true
		else
			v.mouseover = false
		end
	end
end