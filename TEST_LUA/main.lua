
WINDOWS_WIDTH = 1280
WINDOWS_HEIGHT = 720

function love.load()
    love.window.setMode(WINDOWS_WIDTH, WINDOWS_HEIGHT, {
        fullscreen = false,
        resizable = false,
        vsync = true
    })
    love.graphics.setDefaultFilter()
    
end

function love.update(dt)

end


function love.draw()
    love.graphics.printf(
        "Hello Pong",
        0,
        WINDOWS_HEIGHT / 2 - 6,
        WINDOWS_WIDTH,
        'center')
end


