--local state=require "source.states.state"
local G={}
local image={}
function G.image(o)
    if not image[o] then
        image[o]=love.graphics.newImage(o)
    end
    return image[o]
end
return G