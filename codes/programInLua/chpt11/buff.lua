
local t = {}
-- How to end the io lines?
for line in io.lines() do
    t[#t+1] = line
end

print(table.concat(t,"\n") .. "\n")
