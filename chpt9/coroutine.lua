-- 创建协程
-- 函数 coroutine.create 用于创建一个新的协程
co = coroutine.create(function() 
    io.write("hello coroutine\n")
end)

-- 当创建完一个协程后，会返回一个类型为 thread 的对象，但并不会马上启动运行协程主函数，协程的初始状态是处于挂起状态

-- 协程有 4 种状态，分别是：挂起（suspended）、运行（running）、死亡（dead）和正常（normal），可以通过 coroutine.status 来输出查看协程当前的状态
print(coroutine.status(co))

-- 执行协程
coroutine.resume(co)

-- 协程被调用执行后，其状态会由挂起（suspended）改为运行（running）。不过当协程主函数全部运行完之后，它就变为死亡（dead）状态。

-- 传递给 resume 的额外参数都被看作是协程主函数的参数

co1 = coroutine.create(function(a, b, c)
    print("co1",a, b, c)
end)
coroutine.resume(co1,1, 2, 3)

-- 协程主函数执行完时，它的主函数所返回的值都将作为对应 resume 的返回值

co2 = coroutine.create(function()
    return 3, 4
end)
print(coroutine.resume(co2))

-- 中断协程运行
co3 = coroutine.create(function() 
    for i=1,3 do
        print("before coroutine yield",i)
        coroutine.yield()
        print("after coroutine yield",i)
    end
end)

coroutine.resume(co3)
coroutine.resume(co3)
coroutine.resume(co3)
coroutine.resume(co3)