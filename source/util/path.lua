local path={}
function path.getFileFull(name,path)
    path=path or ""
    return path.."/"..name
end
return path