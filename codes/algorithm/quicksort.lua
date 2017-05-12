function quickSort(...)
    local list = {...}
    if #list < 2 then
        return list
    end

    local lit,big = {},{}
    local rel = list[1]
    for k = 2,#list do
        if list[k] >= rel then
            table.insert(big,list[k])
        else
            table.insert(lit,list[k])
        end
    end
    --print(rel)
    
    return {quickSort(lit),rel,quickSort(big)}
end

list = {12,20,5,8,3,67,2,4,9,11}
sorted = quickSort(list)
-- print(sorted)
---[[
for k, v in pairs(sorted) do
    print(k,v)
end
--]]
