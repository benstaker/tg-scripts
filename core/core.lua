--core.lua

-- Include the core modules
local thispath = select('1', ...):match(".+%.") or ""
local functions = require(thispath..'functions')

-- Attach the core modules
local core = {}
core.functions = functions

-- Expose the core modules
return core