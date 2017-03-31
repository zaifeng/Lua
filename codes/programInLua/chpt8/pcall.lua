local status, err = pcall(function ()
    error({code=404})
end)

if not status then
    print(err.code)
end