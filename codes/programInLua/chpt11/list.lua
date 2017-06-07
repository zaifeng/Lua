-- init
local i = 5
list = nil
while i > 0 do
    list = {next=list,value=i}
    i = i - 1
end

-- Loop
local l = list
while l do
    print(l.value)
    l = l.next
end

--[[ Attention the order Output as bellow
1
2
3
4
5
]]
