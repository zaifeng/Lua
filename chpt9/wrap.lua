function wrap(param)
    print("Before yield",param)
    obtain = coroutine.yield()
    print("After yield",obtain)
    return 8
end
resumer = coroutine.wrap(wrap)

print(resumer(1))
print(resumer(2))

-- Result Output
-- Before yield    1

-- After yield 2
-- 3

-- 注意中间的空行



co = coroutine.create(
    function (a , b)
        print("params", a, b)
        return coroutine.yield()
    end
)
coroutine.resume(co, 1, 2);
print(coroutine.resume(co, 4, 5))

-- Output

-- params  1   2
-- true    4   5