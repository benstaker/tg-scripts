--core.lua

-- Include the core modules
local __dir = (...):match("(.-)[^%.]+$")
local functions = require(__dir .. 'functions')

-- Attach the core modules
local core = {}
core.functions = functions

-- Expose the core modules
return core