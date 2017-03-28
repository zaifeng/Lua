co = coroutine.create(function(a, b, c)
    coroutine.yield(a, b, c)
    return 2*a, 2*b ,2*c
end)
print(coroutine.resume(co, 1, 2, 3))
print(coroutine.resume(co--[[,3,3,3--]])) -- invalid param pass
print(coroutine.resume(co))

-- Output Result
-- true  1   2   3
-- true  2   4   6
-- false   cannot resume dead coroutine