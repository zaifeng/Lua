function sort_choose(list)
    local mk,mv
    for i = 1,#list-1 do
        mk ,mv = i,list[i]
        for j = i+1, #list do
            if list[j] <= mv then
                mk,mv = j,list[j]
            end
        end
        if mk ~= i then
            list[i], list[mk] = list[mk],list[i]
        end
    end    
    return list
end

function iprint(arr)
    for i,v in pairs(arr) do
        print(i,v)
    end
end

list = {6,23,5,8,9,2,4,7,11,8}
newlist = sort_choose(list)
iprint(newlist)
