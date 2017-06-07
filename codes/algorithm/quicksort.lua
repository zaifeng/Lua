function quickSort(list , left, right)
    if left > right then
        return
    end

    local i, j = left, right
    while i ~= j do
        while list[j] >= list[left] and i < j do
            j = j - 1
        end

        while list[i] <= list[left] and i < j do
            i = i + 1
        end

        if i < j then
            list[i],list[j] = list[j],list[i]
        end
    end
    list[left],list[i] = list[i],list[left]
    quickSort(list,left,i-1)
    quickSort(list,i+1,right)
end

list = {10,2,9,5,6,12,3}
sorted = quickSort(list , 1,#list)

for k,v in pairs(list) do
    print(k,v)
end


