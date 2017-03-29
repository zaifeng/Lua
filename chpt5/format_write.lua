function fwrite(fmt, ...)
    return io.write(string.format(fmt, ...))
end

fwrite("%d\t%d\n", 5, 6)