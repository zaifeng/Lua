i = 32
local i = 1
f = load("i = i + 1; print(i)")
g = function () i = i + 1;print(i) end

f()
g()
