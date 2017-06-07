local bool = assert(true)
print(bool)

print(assert(1,2,3))

local file = assert(io.open("./hello1.lua","r"), "No such file or directory")

