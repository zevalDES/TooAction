local menuRender={}

local function renderBackground(bg)
    local image=love.graphics.newImage(bg.image)
    love.graphics.draw(image,0,0)
    return function ()
        if image then
            image=image
        end
    end
end
function menuRender.render(menu)
    if menu then
        local background=menu.background
        renderBackground(background)
    end
end

return menuRender