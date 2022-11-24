local lib = {}

local hs = game:GetService("HttpService")

function lib.WriteConfig(fname, data)
    local file = fname..".json"
    writefile(file, hs:JSONEncode(data))
end

function lib.IsConfig(fname)
    return isfile(fname..".json")
end

function lib.ReadConfig(fname)
    local file = fname..".json"
    local raw_data = readfile(file)
    local data = hs:JSONDecode(raw_data)
    return data
end

return lib
