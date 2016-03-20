--main.lua
moduleFolder = "tg-scripts"
package.path = '../' .. moduleFolder .. '/?.lua;' .. package.path
local __dirname = moduleFolder .. '.'
core = require(__dirname .. '_core._core')

-- Load in the handlers
local pingPong = require(__dirname .. '.handlers.ping-pong')
local test = require(__dirname .. '.handlers.test')

function Set (list)
    local set = {}
    for _, l in ipairs(list) do set[l] = true end
    return set
end

-- Set the allowed users
local allowedUsers = Set{'Ben Staker'}

-- Message handler
on_msg_receive = function (msg)
    -- TODO: Document this
    if msg.out then
        return
    end

    -- Prevent unauthorised users from sending commands
    if not allowedUsers[msg.from.print_name] then
        print('"on_msg_receive()" ' .. msg.from.print_name .. ' does not have access')
        send_msg (msg.from.print_name, 'sorry you do not have access', ok_cb, false)
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