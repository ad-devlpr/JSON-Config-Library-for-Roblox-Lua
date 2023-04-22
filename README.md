# JSON-Config-Library-for-Roblox-Lua
This makes writing config files way easier than before. Uses HttpService:JSONEncode() and HttpService:JSONDecode() to work.

# Documentation:
---

void WriteConfig(<string> fileName, <table> content)
---
Writes a JSON config file with the given filename and content which can be read, edited or overwritten.

void ReadConfig(<string> fileName/filePath)
---
Returns a table from the read config file which you can use as mentioned/given in the example.

bool IsConfig(<string> fileName/filePath)
---
Returns true if the config exists in the executor's directory, workspace folder (by default) or wherever you've saved it, false if not.
# Examples:
WriteConfig()
---
<pre>
--Write Config
local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexDevlpr/JSON-Config-Library-for-Roblox-Lua/main/Library.lua"))()

local example_table = {
    money = 20,
    isbroke = true,
    msg = "This is a example script lol"
}

lib.WriteConfig("example_config", example_table)

--[[
Output: Nothing, It writes a config with the given data.
]]
</pre>

ReadConfig()
---
<pre>
--Read Config

local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexDevlpr/JSON-Config-Library-for-Roblox-Lua/main/Library.lua"))()

local table_uwu = lib.ReadConfig("example_config")

print("I have $"..tostring(table_uwu.money))
print("I am broke? That is "..tostring(table_uwu.isbroke))
print(table_uwu.msg)

--[[
Output:
I have $20
I am broke? That is true
This is a example script lol
]]
</pre>

IsConfig()
---
<pre>
--Read Config

local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexDevlpr/JSON-Config-Library-for-Roblox-Lua/main/Library.lua"))()

local configexists = lib.IsConfig("example_config")

print(configexists)

--[[
Output:
true
]]
</pre>
