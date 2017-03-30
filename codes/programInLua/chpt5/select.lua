function sel(...)
    for i=1, select('#', ...) do
        --print(i,select(i, ...))
        local arg = select(i, ...)
        print(i, arg)
    end
end

sel(1,2,3,4,5,6)