-- wrong example
function sel(...)
    local arg = select(#, ...)
    print(arg)
    -- for i=1, select(#, ...) do
    --    local arg = select(i, ...)
    -- end
end

sel({1,2,3,4,5,6})