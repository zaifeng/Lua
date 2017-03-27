function newCounter()
    local i = 0
    return function ()
        i = i + 1
        return i
    end
end

c = newCounter()

print(c())
print(c())