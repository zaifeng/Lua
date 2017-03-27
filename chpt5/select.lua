-- wrong example
do
    function sel(...)
        for i=1, select('#', ...) do
            local arg = select(i, ...)
            print(arg)
        end
    end

    sel(1,2,3,4,5,6)
end

