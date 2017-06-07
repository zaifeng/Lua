local nums = {1,2,3,4,5,6,7,8,9,10}
local function nsum(...)
        sum = 0
        for _,v in ipairs{...} do
            sum = sum + v
        end
        return sum
      end

print(nsum(table.unpack(nums)))

-- nil in params

local nnums = {1,2,3,4,5,6,nil,7,8,9,10}

print(nsum(table.unpack(nnums))) -- 21 = 1+2+3+4+5+6

function nsum1(...)
    local sum = 0

    for i=1, select('#', ...) do
        local arg = select(i, ...)
        if arg ~= nil then
            sum = sum + arg
        end
    end
    return sum
end

print(nsum1(table.unpack(nnums)))
