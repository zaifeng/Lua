-- 计算一个数的阶乘
function fact( n )
    -- body
    if n == 0 then
        return 1
    else 
        return n*fact(n-1)
    end
end

print("Enter a number:")
a = io.read("*number")
print(fact(a))