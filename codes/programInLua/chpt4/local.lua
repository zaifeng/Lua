x = 10
local i = 1

while i <= x do
    local x = i*2
    print(x)
    i = i + 1
end
-- Output 
-- 2
-- 4
-- 6
-- 8
-- 10
-- 12
-- 14
-- 16
-- 18
-- 20
if i > 20 then
    local x     -- define a local variable
    x = 20      -- assign 20 to local x
    print(x + 2)
else
    print(x)
end

-- Output
-- 10

print(x)

-- Output
-- 10

-- do end chunk

do
    local x = 1
    print(x)
end
print(x)