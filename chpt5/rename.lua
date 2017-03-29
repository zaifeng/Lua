function rename(arg)
    return os.rename(arg.old, arg.new)
end
-- Lua函数的另类调用
rename{new="rename.log",old="rename.txt"}