local mainMenuState=require "source.states.mainMenu.mainMenuState"
local state={
    mainMenu=mainMenuState
}
state.previousState=nil
state.currentState=nil
function state.changeState(name)--TODO:Complete
    state.previousState=state.currentState
    state.resetPrevious()
    state.currentState=name
    state.load()
end
function state.reset()
    local currentState=state.currentStateState
    state[currentState].reset()
end
function state.resetPrevious()
    local previousState=state.previousState
    if previousState then
        state[previousState].reset()
    end
end
function state.load()
    local currentState=state.currentState
    state[currentState].load()
end
function state.update()
    local currentState=state.currentState
    state[currentState].update()
end
function state.draw()
    local currentState=state.currentState
    state[currentState].draw()
end
return state