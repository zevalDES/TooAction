local json=require "source.library.json"
local path=require "source.util.path"
local setting={}
setting.directory="config/settings"
setting.categories={
    "uncategorized"
}
setting.files={}
setting.options={}
--[[function setting.isFileOpened()
    
end]]
function setting.openSettingsFiles()
    local directory=setting.directory
    local categories=setting.categories
    for index,category in pairs(categories) do
        local filePlace=path.getFileFull(category..".json",directory)
        setting.files[category]=assert(io.open(filePlace))
    end
end
function setting.getOptions()
    local settingsFiles=setting.files
    for category, file in pairs(settingsFiles) do
        local content=file:read("*a") or {}
        setting.options[category]=json.decode(content)
    end
     
end
--[[function setting.updateFile() TODO:
    local options=assert(setting.options,"options are missing")
    local content=json.encode(options)


end]]

return setting