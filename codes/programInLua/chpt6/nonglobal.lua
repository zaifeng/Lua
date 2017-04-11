lib = {p1=0,p2=0}

function lib:new(x,y)
    self.p1, self.p2 = x , y
    -- print(self.p1,self.p2)
end

function lib:print()
    print(self.p1, self.p2)
    -- return self.p1 - self.p2
end

function lib:sadd()
    return self.p1 + self.p2
end

a = lib
a:new(10,20)
a:print()

print(lib:sadd())