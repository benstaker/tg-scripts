--core.lua
local __dir = moduleFolder .. '/core'
package.path = '../' .. __dir .. '/?.lua;' .. package.path

-- Include the core modules
local functions = require('functions')

-- Attach the core modules
local module = {}
module.functions = functions

-- Expose the core modules
return module