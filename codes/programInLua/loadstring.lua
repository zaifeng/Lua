i = 32

local i = 0
-- if global variable i was not defined wrong will happened
f1 = load("i = i + 1;print(i)")

f2 = function() i = i + 1;print(i) end

f1()
f1()
--f2()
--f2()

