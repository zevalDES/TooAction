local render=require "source.ui.UIRenderer"
local mouse=require "source.input.mouse"
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
function menuKit:addButton(name,x,y,width,height,image,...)
    local misc=...
    self.button=self.button or {}
    self.button[name]={x=x,y=y,width=width,height=height,image=image,misc=misc}
    return self
end
--[[local function getHoveredButton(buttons)
    local mouseX=mouse.position.x
    local mouseY=mouse.position.y
    for index,button in pairs(buttons) do
        local buttonX=button.x
        local buttonY=button.y
        local buttonW=button.width
        if 0<=mouseX-buttonX<=buttonW then
            return button.name
        end
    end
end]]--not Working
function menuKit:update()
    --self.hoveredButton=getHoveredButton()
    --return {hoveredButton=hovered}
end
function menuKit:draw()--TODO:Kaldır
    render.render(self)
end
return menuKit