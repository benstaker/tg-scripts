--main.lua
moduleFolder = "tg-scripts"
local __dir = moduleFolder
package.path = '../' .. __dir .. '/?.lua;' .. package.path

-- Load in the core modules
local core = require('core.core')

-- Message handler
function on_msg_receive (msg)
  if msg.out then
    return
  end
  if (msg.text == 'ping') then
    send_msg (msg.from.print_name, 'pong', ok_cb, false)
  end
end

-- Attach the dummy functions
on_our_id = core.functions.on_our_id
on_secret_chat_created = core.functions.on_secret_chat_created
on_user_update = core.functions.on_user_update
on_chat_update = core.functions.on_chat_update
on_get_difference_end = core.functions.on_get_difference_end