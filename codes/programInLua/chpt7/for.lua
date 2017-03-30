-- local line
local line
for line in io.lines() do
    io.write(line,"\n")
end

local line1 = io.read()
while line1 do
    print(line1)
    line1 = io.read()
end