-- Pre-Init
local lib = {}

-- Functions
function lib.WriteConfig(fname, data)
    writefile(fname..".json", game:GetService("HttpService"):JSONEncode(data))
end

function lib.IsConfig(fname)
    return isfile(fname..".json")
end

function lib.ReadConfig(fname)
    return game:GetService("HttpService"):JSONDecode(readfile(fname..".json"))
end

-- Returns library of functions.
return lib
