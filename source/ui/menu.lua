local render=require "source.ui.UIRenderer"
local menuKit={}

function menuKit.makeMenu(tag)
    local newMenu=menuKit
    newMenu.tag=tag
    return newMenu
end
function menuKit:setBackground(image,mode)--TODO:Kaldır
    self.background={image=image,mode=mode}
    return self
end
function menuKit:addButton(name,x,y,width,height)
    self.button=self.button or {}
    self.button[name]={x=x,y=y,width=width,height=height}
    return self
end
function menuKit:displayMenu()--TODO:Kaldır
    render.render(self)
end
return menuKit