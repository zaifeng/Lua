function newCounter()
    local i = 0
    return function ()
        i = i + 1
        return i
    end
end

c = newCounter()
c1 = newCounter()
print(c())
print(c())

print(c1())
print(c1())