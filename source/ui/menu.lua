local render=require "source.graphics.rendering.menuRender"
local menuKit={}

function menuKit.makeMenu(tag)
    local newMenu=menuKit
    newMenu.tag=tag
    return newMenu
end
function menuKit:setBackground(image,mode)--TODO:mode ekle--Kaldırılabilir
    self.background={image=image,mode=mode}
    return self
end
function menuKit:displayMenu()--Kaldırılabilir
    render.render(self)
end
return menuKit