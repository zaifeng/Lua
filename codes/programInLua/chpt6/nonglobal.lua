lib = {p1=0,p2=0}

function lib:new()
    o = o or {}
    setmetatable(o,self)
    self.__index = self
    return o
end

function lib:init(x,y)
    self.p1, self.p2 = x , y
end

function lib:print()
    print(self.p1, self.p2)
    -- return self.p1 - self.p2
end

function lib:sadd()
    return self.p1 + self.p2
end

a = lib:new()
a:init(10,20)
a:print()

print(a:sadd())