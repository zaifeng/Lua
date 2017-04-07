a = {}
b = {}
for i=1,100 do
    a[i] = 0
end

print(#a)


for i=-5,10 do
    b[i] = 1
end

-- # 标识符只获取1开头，nil结尾的元素长度
print(#b) -- print 10