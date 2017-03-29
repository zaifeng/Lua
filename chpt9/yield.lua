co = coroutine.create(function(a, b, c)
    coroutine.yield(4, 5, 6)
    return a, b ,c
end)
print(coroutine.resume(co, 1, 2, 3))
print(coroutine.resume(co))
print(coroutine.resume(co))

-- Output Result
-- true    4   5   6
-- true    1   2   3
-- false   cannot resume dead coroutine