function bubble(arr)
    for i = 1,#arr do
        for j=1,#arr-i do
            if arr[j] < arr[j+1] then -- Order control
                arr[j], arr[j+1] = a[j+1],a[j]
            end
        end
    end
    
    for _,v in ipairs(arr) do
        print(v)
    end
end

a = {8,3,1,5,7,11}
bubble(a)
