--main.lua

-- Global and local variables
moduleFolder = "tg-scripts"
package.path = '../' .. moduleFolder .. '/?.lua;' .. package.path
local __dirname = moduleFolder .. '.'

-- Load in the handlers
require(__dirname .. '.handlers.ping-pong')
require(__dirname .. '.handlers.test')