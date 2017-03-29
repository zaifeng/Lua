a = {x=1,y=2 ; ["z"]=5,["t"]=6 ; "sina","360","letv"}


for i,v in pairs(a) do
    print(v)
end

-- nil nothing output
for i=1,#a do
    -- print(a[i])
end