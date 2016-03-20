--main.lua
moduleFolder = "tg-scripts"
package.path = '../' .. moduleFolder .. '/?.lua;' .. package.path
local __dirname = moduleFolder .. '.'

-- Globals
core = require(__dirname .. '_core._core')

-- Load in the handlers
local pingPong = require(__dirname .. '.handlers.ping-pong')
local test = require(__dirname .. '.handlers.test')

-- Message handler
on_msg_receive = function (msg)
    -- TODO: Document this
    if msg.out then
        return
    end

    -- Attach the handlers
    pingPong.handle(msg)
    test.handle(msg)
end

-- Attach the dummy functions
on_our_id = core.on.our_id
on_secret_chat_created = core.on.secret_chat_created
on_user_update = core.on.user_update
on_chat_update = core.on.chat_update
on_get_difference_end = core.on.get_difference_end