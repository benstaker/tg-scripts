--core.lua

-- Include the core modules
package.path = "../?.lua;" .. package.path
local functions = require(moduleFolder .. 'core.functions')

-- Attach the core modules
local module = {}
module.functions = functions

-- Expose the core modules
return module