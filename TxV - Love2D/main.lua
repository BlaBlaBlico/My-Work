math.randomseed(os.time())

require "players"
require "player_AI"
require "map"
require "shield"
require "bullet"
require "menu"
require "obstacles"
require "UI"
require "crates"

function love.load()
    love.window.setMode(800, 500, {vsync = false})
    cursor = love.mouse.newCursor("images/cursor.png", 2, 1)
    love.mouse.setCursor(cursor)

    shoot = love.audio.newSource("assets/shoot.ogg", "static")
    rapid_shoot = love.audio.newSource("assets/rapid_shoot.ogg", "static")
    shield_hit = love.audio.newSource("assets/Shield_Hit.ogg", "static")
    revive = love.audio.newSource("assets/Revive.ogg", "static")
    dead = love.audio.newSource("assets/Death.ogg", "static")

    gamestate = "menu"

    button_spawn_m(285, 220, "Single Player-Under Development", "play_s")
    button_spawn_m(355, 235, "Multiplayer", "play_m")
    button_spawn_m(372, 250, "Quit", "quit")
    button_spawn_p(360, 220, "Resume", "resume")
    button_spawn_p(362, 235, "Restart", "restart")
    button_spawn_p(372, 250, "Quit", "quit")
end

function love.update(dt)
	if gamestate == "m_playing" or gamestate == "s_playing" then
       love.mouse.setVisible(false)
    end
    mousex = love.mouse.getX()
	mousey = love.mouse.getY()

	if gamestate == "m_playing" or gamestate == "s_playing" then
        player_move(dt)
        player_update(dt)
        AI_update(dt)
        map_collide()
        shield_update(dt)
        bullet_update(dt)
        obstacle_move(dt)
        crate_update(dt)
        crate_spawn(dt)
    end

    if gamestate == "menu" then
    	button_check_m(dt)
    end

    if gamestate == "paused" then
    	button_check_p()
    end
end

function love.draw()
    -- love.graphics.print(player_AI.timer, 100, 100)
    -- love.graphics.print(gamestate, 100, 200)
    -- love.graphics.print(player_AI.random, 100, 300)

	if gamestate == "m_playing" or gamestate == "s_playing" or gamestate == "menu" or gamestate == "paused" then
	    player_draw()
	    shield_display()
	    shield_draw()
	    bullet_draw()
	    player_display()
	    obstacle_draw()
	    crate_draw()
	end

	if gamestate == "menu" then
		button_draw_m()
	end

	if gamestate == "paused" then
		button_draw_p()
	end
end

function love.mousepressed(x, y)
    if gamestate == "menu" then
        button_click_m(x, y)
    end

	if gamestate == "paused" then
		button_click_p(x, y)
	end
end

function love.keypressed(key)
	if gamestate == "m_playing" or gamestate == "s_playing" then
	    shield_on(key)
        bullet_shoot(key)
    end

    if key == "escape" then
    	gamestate = "paused"
    	love.mouse.setVisible(true)
    end
end

function love.keyreleased(key)
	if gamestate == "m_playing" or gamestate == "s_playing" then
	    shield_off(key)
	end
end

function CheckCollision(x1,y1,w1,h1, x2,y2,w2,h2)
    return x1 < x2+w2 and
        x2 < x1+w1 and
        y1 < y2+h2 and
        y2 < y1+h1
end
