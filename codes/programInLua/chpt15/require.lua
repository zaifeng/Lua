local m = require "complex"
-- require "complex"
a = m.new(3, 4)
b = m.new(4, 5)
c = m.sub(b, a)

print(c.r .. " " .. c.i)

print(m.attr)