-- 函数 coroutine.running 用于返回正在运行中的协程，如果没有协程运行，则返回 nil
print(coroutine.running())

co = coroutine.create(function ()
    print(coroutine.running())
    print(coroutine.running() == co)
end)
coroutine.resume(co)

print(coroutine.running())