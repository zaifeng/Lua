-- Create a table
a = {}

-- assign values from io stream
for i=1,10 do
    a[i] = io.read()
end

-- iterator table
for i=1,#a do
    print(a[i])
end
