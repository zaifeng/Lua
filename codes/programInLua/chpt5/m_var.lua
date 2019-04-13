function select (n, ...)

    return arg[n]

end

 

print(string.find("hello hello", " hel")) --> 6  9

print(select(1, string.find("hello hello", " hel"))) --> 6

print(select(2, string.find("hello hello", " hel"))) --> 9