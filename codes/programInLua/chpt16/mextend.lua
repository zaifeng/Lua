Account = {balance=100}
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

function search(k, plist)
    for i=1, #plist do
        local v = plist[i][k]
        if v then return v end
    end
end

function createClass(...)
    local c = {}
    local parents = {...}

    setmetatable(c,{__index=function (t,k)
        return search(k, parents)
    end})

    --[[
    setmetatable(c,{__index=function (t,k)
        local v = search(k, parents)
        t[k] = v
        return v
    end})
    --]]
    c.__index = c
    function c:new(o)
        o = o or {}
        setmetatable(o, c)
        return o
    end
    return c
end

Named = {}

function Named:getname()
    return self.name
end

function Named:setname(name)
    self.name = name
end

NamedAccount = createClass(Account, Named)

account = NamedAccount:new{name="Paul"}
print(account:getname())
