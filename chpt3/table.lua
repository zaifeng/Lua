a = {x=1,y=2 ; ["z"]=5,["t"]=6 ; "sina","360","letv",}

-- nodigit key output randomly
for k,_ in pairs(a) do
    print(a[k])
end
print("--------")
-- if digit key 1 not set nothing will be output
for i=1,#a do
    print(a[i])
end

print("--------")
-- like upon
for i,_ in ipairs(a) do
    print(a[i])
end

-- Output
-- sina
-- 360
-- letv
-- 2
-- 5
-- 6
-- 1
--------
-- sina
-- 360
-- letv
--------
-- sina
-- 360
-- letv