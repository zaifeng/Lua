--[[
classical producer and consumer problem
--]]

function receive(prod)
    local _, value = coroutine.resume(prod)
    return value
end

function send(x)
    coroutine.yield(x)
end

function producer()
    return coroutine.create(function ()
        while true do
            local x = io.read()
            send(x)
        end
    end)
end

function filter(prod)
    return coroutine.create(function()
        for line = 1, 5 do
            local x = receive(prod)
            x = string.format("%5d Enter is %s", line, x)
            send(x)
        end
    end)
end

function consumer(prod)
    while true do
        local obtain = receive(prod)
        if obtain then
            io.write(obtain,"\n\n")
        else
            break 
        end
    end
end

p = producer()
f = filter(p)
consumer(f)