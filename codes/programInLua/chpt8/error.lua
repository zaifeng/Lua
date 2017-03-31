print("enter a number")

local n = io.read("*number")

if not n then error("invalid input") end

function foo(str)
    if type(str) ~= "string" then
        error("string expected", 2)
    else
        print("You are right",str)
    end
end

foo("Hello world")
foo({x=2})