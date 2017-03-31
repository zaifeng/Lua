print("Enter function to be plotted(with variable 'x')")

local l = io.read()
local f = assert(load("local _ = ...; return " .. l))

for i=1,10 do
    print(string.rep("*", f(i)))
end