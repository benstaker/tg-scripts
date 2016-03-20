--core.lua

-- Include the core modules
package.path = "?.lua;" .. package.path
local functions = require('core.functions')

-- Attach the core modules
local core = {}
core.functions = functions

-- Expose the core modules
return core