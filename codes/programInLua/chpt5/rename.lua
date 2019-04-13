function rename(arg)
    return os.rename(arg.old, arg.new)
end
-- Lua函数的另类调用
rename{old="rename.log",new="rename.txt"}