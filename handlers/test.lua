--test.lua
local module = {}

-- Message handler
module.handle = function (msg)
    -- test
    if (msg.text == 'test') then
        send_msg (msg.from.print_name, 'test received', ok_cb, false)
    end
end

-- Expose the module
return module