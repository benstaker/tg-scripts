--core.lua

-- Include the core modules
local functions = require('core.functions')

-- Attach the core modules
local module = {}
module.functions = functions

-- Expose the core modules
return module