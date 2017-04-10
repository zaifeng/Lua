-- missing will filled by nil
a, b, c = 0,1
print(a,b,c)

-- multi assignment
a, b = a+1, b+1, b+2

print(a,b)

a, b, c = 0

print(a,b,c)

-- Output
-- 0   1   nil
-- 1   2
-- 0   nil nil