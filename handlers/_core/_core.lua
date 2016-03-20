--core.lua
local module = {}
local __dirname = moduleFolder .. '.handlers._core.'

-- Attach the core modules
local functions = require(__dirname .. 'functions')
module.on = functions.on

-- Expose the module
return module