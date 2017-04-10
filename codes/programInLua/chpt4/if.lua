-- if example
local a,b,sum = 10,20
local op = "/"

if op == "+" then
    sum = a + b
elseif op == "-" then
    sum = a - b
elseif op == "*" then
    sum = a - b
elseif op == "/" and b ~= 0 then
    sum = a / b
else
    error("Wrong operator input")
end

print(sum)