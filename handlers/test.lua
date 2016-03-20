--test.lua

-- Load in the core modules
local __dirname = moduleFolder .. '.handlers.'
local core = require(__dirname .. '_core._core')

-- Message handler
on_msg_receive = function (msg)
    -- TODO: Document this
    if msg.out then
        return
    end

    -- test
    if (msg.text == 'test') then
        send_msg (msg.from.print_name, 'test received', ok_cb, false)
    end
end

-- Attach the dummy functions
on_our_id = core.on.our_id
on_secret_chat_created = core.on.secret_chat_created
on_user_update = core.on.user_update
on_chat_update = core.on.chat_update
on_get_difference_end = core.on.get_difference_end