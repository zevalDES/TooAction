require "import"
local gameWidth=800
local gameHeight=600
setting.openSettingsFiles()
setting.getOptions()
function love.load()
    local options=setting.options
    love.window.setMode(gameWidth,gameHeight,{vsync=options.uncategorized.vsync})
    state.changeState("mainMenu")
end

function love.update(dt)
    delta=dt

    mouse.getPosition()
    state.update()
end

function love.draw()
    --love.graphics.circle("fill",400,300,50)
    state.draw()
    love.graphics.print(1/delta,0,0)
    love.graphics.print(mouse.position.x..":"..mouse.position.y,0,40)
end