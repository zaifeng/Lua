function binary_search(list,needle)
    local low, high, mid = 1, #list, 0
    while low <= high do
        mid = math.ceil((low + high)/2)
        if list[mid] == needle then
            return mid
        end
    
        if list[mid] > needle then
            high = mid - 1
        else
            low = mid + 1
        end
    end 
    return nil
end

print(binary_search({1,2,3,5,6,8,9,12,15}, 9))
