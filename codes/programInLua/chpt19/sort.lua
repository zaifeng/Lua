local lines = {hello=12,world=123,lua=8}

local a = {}
for n,_ in pairs(lines) do
    a[ #a + 1 ] = n
end
table.sort(a)

for i,n in ipairs(a) do
    print(n)
end