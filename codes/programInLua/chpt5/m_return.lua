function foo()
    local a,b = 1,2
    -- local b = 2
    return a,b
end

print(foo())


function maximum(a)
    -- body
    local mi = 1
    local m = a[mi]
    for i,val in ipairs(a) do
        if val > m then
            m = val 
            mi = i
        end
    end
    return mi,m 
end
print("maximum is:",maximum({8,10,23,12,5}))

s,e = string.find("Hello Lua Programmer","Lua")
print(s,e)