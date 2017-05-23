-- math.random 使用了C标准库中的rand函数，所产生的数字并不具备统计意义上的均匀分布特性
-- 所以尽量不要使用
print(os.time())
--[[
math.randomseed(os.time())
local rdnum = math.random(1,100)
print(rdnum)
--]]
print(math.random())
