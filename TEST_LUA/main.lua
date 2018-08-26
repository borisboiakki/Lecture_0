
push = require 'push'

WINDOWS_WIDTH = 1280
WINDOWS_HEIGHT = 720

VIRTUAL_WIDTH = 432
VIRTUAL_HEIGHT = 243


function love.load()
    love.graphics.setDefaultFilter('nearest','nearest')

    smallFont = love.graphics.newFont('font.ttf',8)

    love.graphics.setFont(smallFont)

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

    love.graphics.clear(0, 0, 0, 1)


    love.graphics.printf(
        "Hello Pong",
        0,
        10,
        VIRTUAL_WIDTH,
        'center')

    love.graphics.rectangle('fill', 10 , 30, 5, 20)

    love.graphics.rectangle(
        'fill',
        VIRTUAL_WIDTH - 10, VIRTUAL_HEIGHT - 50,
         5,20)

    love.graphics.rectangle('fill',VIRTUAL_WIDTH/2 -2, VIRTUAL_HEIGHT /2 -2, 4,4)
    
    push:apply('end')
end


