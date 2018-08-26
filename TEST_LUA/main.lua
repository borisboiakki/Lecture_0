
push = require 'push'

WINDOWS_WIDTH = 1280
WINDOWS_HEIGHT = 720

VIRTUAL_WIDTH = 432
VIRTUAL_HEIGHT = 243


function love.load()
    love.graphics.setDefaultFilter('nearest','nearest')
    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOWS_WIDTH, WINDOWS_HEIGHT, {
        fullscreen = false,
        resizable = false,
        vsync = true
    })
    
end

function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
end

--function love.update(dt)
--end


function love.draw()
    push:apply('start')

    love.graphics.printf(
        "Hello Pong",
        0,
        VIRTUAL_HEIGHT / 2 - 6,
        VIRTUAL_WIDTH,
        'center')

    push:apply('end')
end


