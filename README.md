# JSON-Config-Library-for-Roblox-Lua
This makes writing config files way easier than before. Uses HttpService:JSONEncode() and HttpService:JSONDecode() to work.

# Documentation:

⋅⋅* void WriteConfig(fileName, content)
Writes a JSON config file with the given filename and content.

⋅⋅* void ReadConfig(fileName)
Returns a table from the read config which you can use.

⋅⋅* bool IsConfig(fileName)
Returns true if the config exists in workspace folder, false if not.
