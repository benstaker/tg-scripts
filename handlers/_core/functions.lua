--functions.lua

-- Module object
local module = {}
module.on = {}

-- TODO: Document this function
module.on.msg_receive = function (id)
    print('"on_msg_receive()" empty handler...')
end

-- TODO: Document this function
module.on.our_id = function (id)
    print('"on_our_id()" empty handler...')
end

-- TODO: Document this function
module.on.secret_chat_created = function (peer)
    print('"on_secret_chat_created()" empty handler...')
end

-- TODO: Document this function
module.on.user_update = function (user)
    print('"on_user_update()" empty handler...')
end

-- TODO: Document this function
module.on.chat_update = function (user)
    print('"on_chat_update()" empty handler...')
end

-- TODO: Document this function
module.on.get_difference_end = function ()
    print('"on_get_difference_end()" empty handler...')
end

-- TODO: Document this function
module.on.binlog_replay_end = function ()
    print('"on_binlog_replay_end()" empty handler...')
end

-- Expose the module
return module