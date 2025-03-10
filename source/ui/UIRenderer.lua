local UIRenderer={}
local imageCache={}
local function addCache(name,image)
    if not imageCache[name] then
        imageCache[name]=love.graphics.newImage(image)
        --return name
    end
    --return true
end
local function getCache(name)
    return imageCache[name]
end
local function renderBackground(bg)
    addCache("bg",bg.image) 
    local image=getCache("bg")
    love.graphics.draw(image,0,0)
end
function UIRenderer.render(menu)
    if menu then
        local background=menu.background
        renderBackground(background)
    end
end

return UIRenderer