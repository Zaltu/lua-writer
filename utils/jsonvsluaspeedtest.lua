--[[
Simple comparative file to show the speed difference in importing JSON files vs requiring Lua files.
For most accurate result, use 10000 *different* files to avoid caching causing discrepencies.

Requires luajson 1.3.4 (may work with other versions).

Author: Samuel Waugh
Date: December 17th 2018
Version 1.0.0
]]--
local json = require('json')

function read(filepath)
	--[[
	Helper function to load the JSON file.
	]]--
	local file = io.open(filepath)
	if not file then
		error("This file does not exist: "..filepath)
	end
	local todecode = file:read "*a"
	file:close()
	jsonstr = json.decode(todecode)
end

--Load json file 10000 times.
start = os.clock()
for i=1,10000 do
    recieved = read("myfile.json")
end
jsontime = os.clock() - start

--Load Lua file 10000 times
start = os.clock()
for i=1,10000 do
    recieved = dofile("myfile.lua")
end
luatime = os.clock() - start

--Print times
print("JSON time: "..jsontime)
print("LUA time: "..luatime)
