Account = {}
Account.balance = 0
--[[
function Account.withdraw( v )
    Account.balance = Account.balance - v
end
]]

function Account.withdraw(self, v)
    self.balance = self.balance - v
end
a = Account
Account = nil

-- a.withdraw(10) -- wrong revoke

a.withdraw(a,10)