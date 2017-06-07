local nums = {1,2,3,4,5,6,7,8,9,10}
local function nsum(...)
        sum = 0
        for _,v in ipairs{...} do
            sum = sum + v
        end
        return sum
      end

print(nsum(table.unpack(nums)))
