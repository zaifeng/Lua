Account = {balance=0}

function Account:deposit(m)
    self.balance = self.balance + m
end

function Account:withdraw(v)
    self.balance = self.balance - v
end

function Account:brint()
    print(self.balance)
end

function Account:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    return o
end

local instance = Account:new({balance = 100})
instance:brint()
instance:deposit(20)
instance:brint()
instance:withdraw(40)
instance:brint()

