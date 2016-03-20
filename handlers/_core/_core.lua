--core.lua
local __dirname = moduleFolder .. '.handlers._core.'
local module = {}

-- Attach the core modules
local functions = require(__dirname .. 'functions')
module.on = functions.on

-- Expose the core modules
return module