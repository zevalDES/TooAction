local G= require "source.G"
local refer = require "source.graphics.refer"

local UIRenderer={}
--[[local imageCache={}
local function addCache(name,image)
    if not imageCache[name] then
        imageCache[name]=love.graphics.newImage(image)
        --return name
    end
    --return true
end
local function getCache(name)
    return imageCache[name]
end]]
local function renderBackground(bg)
    local image=G.image(bg.image)
    love.graphics.draw(image,0,0)
end
local function renderButtons(buttons)
    local image=nil
    for index,button in pairs(buttons) do
        image=G.image(button.image)
        local x1,y1=refer.transform(button.x,button.y,image,"topleft",button.misc.offsets,button.misc.scales)
        --error(x1..":"..y1)
        love.graphics.draw(image,x1,y1,0,button.misc.scales.x,button.misc.scales.y)
    end
end
function UIRenderer.render(menu)
    if menu then
        local background=menu.background
        local buttons=menu.button
        renderBackground(background)
        renderButtons(buttons)
    end
end

return UIRenderer