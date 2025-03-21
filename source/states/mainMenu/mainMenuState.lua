local menuKit=require "source.ui.menu"
local path=require "source.util.path"
local mainMenuState={}
mainMenuState.directory="assets/elements/mainmenu"
mainMenuState.menu=nil
--mainMenuState.isActivated=false
local initial=mainMenuState

function mainMenuState.load()--TODO:Complete
    local directory=mainMenuState.directory
    local background=path.getFileFull("mainmenu.png",directory)
    local mainmenu=menuKit.makeMenu()
    mainmenu:setBackground(background)
    mainmenu:addButton("play",550,50,200,100,path.getFileFull("button_play.png",directory),{offsets={x=0,y=0},scales={x=2,y=2}})
    mainmenu:addButton("play1",550,175,200,100,path.getFileFull("button_play.png",directory),{offsets={x=0,y=0},scales={x=2,y=2}})
    mainMenuState.menu=mainmenu
end
function mainMenuState.update()
    local mainmenu=mainMenuState.menu
    mainmenu:update()
end
function mainMenuState.draw()
    local mainmenu=mainMenuState.menu
    mainmenu:draw()
end
function mainMenuState.reset()
    mainMenuState=initial
end

--[[if state.currentState=="mainMenu" then
    mainMenuState.isActivated=true
    local mainMenu=menu.newMenu()

end
if state.previousState=="mainMenu" then
    mainMenuState=initial
end]] --alternatif yollar aranıyor
return mainMenuState