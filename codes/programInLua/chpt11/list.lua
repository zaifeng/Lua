list = nil 
list = {next=list, value=1}
local l = list
while l do
    print(l.value)
    l = list.next
end