function add( a )
    -- body
    local sum = 0
    for _, v in pairs(a) do
        sum = sum + v
    end
    return sum
end

t = {1,3,4,5,6,7}

print(add(t))