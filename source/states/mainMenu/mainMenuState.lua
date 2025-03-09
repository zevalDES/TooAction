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
    mainMenuState.menu=mainmenu
end
function mainMenuState.update()
    
end
function mainMenuState.draw()
    local mainmenu=mainMenuState.menu
    mainmenu:displayMenu()
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