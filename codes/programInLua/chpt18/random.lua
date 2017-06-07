-- math.random 使用了C标准库中的rand函数，所产生的数字并不具备统计意义上的均匀分布特性
-- 所以尽量不要使用
print(os.time())

print("without randomseed")
print(math.random())

print("with randomseed")
math.randomseed(os.time())
print(math.random()) -- 输出一个大于等于0，小于1的值
print(math.random(5)) -- 输出不是1就是2
print(math.random(1, 10)) -- 输出不是3就是4
