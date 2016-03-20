--test.lua
local module = {}

-- Message handler
module.handle = function (msg)
    -- When "ping" is received, return "pong"
    if (msg.text == 'ping') then
        send_msg (msg.from.print_name, 'pong', ok_cb, false)
    end
end

-- Expose the module
return module