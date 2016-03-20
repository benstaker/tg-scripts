--system.lua
local module = {}

-- Message handler
module.handle = function (msg)
    -- System reboot
    if (msg.text == 'system reboot') then
        send_msg (msg.from.print_name, 'system is now rebooting...', ok_cb, false)
        os.execute('sudo reboot')
    end
end

-- Expose the module
return module