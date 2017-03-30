function maximum(a)
    local mkey = 1 
    local m = a[mkey]
    for i, v in ipairs(a) do
        if v > m then
            mkey = i
            m = v
        end
    end
    return mkey, m
end

print("Max is",maximum({8,12,43,21,55,2,6}))