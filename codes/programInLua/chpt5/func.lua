function r(a,b)
    -- body
    local c = a or b
    print(c)
    return c
end

r(3)
r(3,4)
r(3,4,5)

function only(a)
    -- body
    print(a)
end

only "123"
only "ehhhe"