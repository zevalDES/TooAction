local mouse={}
mouse.position={x=nil,y=nil}
function mouse.getPosition()
    local x,y=love.mouse.getPosition()
    mouse.position.x=x
    mouse.position.y=y
    return x,y
end
return mouse