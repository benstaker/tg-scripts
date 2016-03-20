--core.lua
local __dir = moduleFolder .. '.core.'

-- Set the package path
package.path = modulePath

-- Include the core modules
local functions = require(__dir .. 'functions')

-- Attach the core modules
local module = {}
module.functions = functions

-- Expose the core modules
return module