local refer={}

local function topleft(x,y,bounds,offsets,scales)
    local offsetX=offsets.x or 0
    local offsetY=offsets.y or 0
    local x1=(x+offsetX)*scales.x
    local y1=(y+offsetY)*scales.y
    return x1,y1
end
local function topright(x,y,bounds,offsets,scales)
    local offsetX=offsets.x or 0
    local offsetY=offsets.y or 0
    local w=bounds.width
    local x1=(x+offsetX-w)*scales.x
    local y1=(y+offsetY)*scales.y
    return x1,y1
end
local function bottomleft(x,y,bounds,offsets,scales)
    local offsetX=offsets.x or 0
    local offsetY=offsets.y or 0
    local h=bounds.height
    local x1=(x+offsetX)*scales.x
    local y1=(y+offsetY+h)*scales.y
    return x1,y1
end
local function bottomright(x,y,bounds,offsets,scales)
    local offsetX=offsets.x or 0
    local offsetY=offsets.y or 0
    local w=bounds.width
    local h=bounds.height
    local x1=(x+offsetX-w)*scales.x
    local y1=(y+offsetY+h)*scales.y
    return x1,y1
end
local function origin(x,y,bounds,offsets,scales)
    local offsetX=offsets.x or 0
    local offsetY=offsets.y or 0
    local w=bounds.width
    local h=bounds.height
    local x1=(x+offsetX-(w/2))*scales.x
    local y1=(y+offsetY+(h/2))*scales.y
    return x1,y1
end
local function customPoint(x,y,bounds,offsets,scales)
    topleft(x,y,bounds,offsets,scales)
    --[[local offsetX=offsets.x or 0--origin copy paste
    local offsetY=offsets.y or 0
    local w=bounds.width
    local h=bounds.height
    local x1=(x+offsetX-(w/2))*scales.x
    local y1=(y+offsetY+(h/2))*scales.y
    return x1,y1]]
end
local references={
    topleft=topleft,
    topright=topright,
    bottomleft=bottomleft,
    bottomright=bottomright,
    origin=origin
}
function refer.transform(x,y,image,reference,offsets,scales)
    local references=references
    local image=love.graphics.newImage(image)
    local w=image:getWidth()
    local h=image:getHeight()
    local referred=nil
    if type(reference)~="string" then
        error("notString")--referred=customPoint
    else
        referred=references[reference]
    end
    local x1,y1=referred(x,y,{width=w,height=h},offsets,scales)
    return x1,y1
end


return refer