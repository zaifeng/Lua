-- string find方法是区分大小写的
s, e = string.find("Hello Lua User", "Lua")
-- 返回开始和结束位置
print(s,e)

-- 如果不存在，返回nil
st,ed = string.find("Hello Lua Script","php")

print(st,ed)