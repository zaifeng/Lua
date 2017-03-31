local socket = require("socket")

host = "www.w3.org"
file = "/TR/REC-html32.html"
-- Open TCP connection to port 80
c = assert(socket.connect(host,80))
-- Send Request
c:send("GET " .. file .. " HTTP/1.0\r\n\r\n")

while true do
    local s, status, partical = c:receive(2^10)
    io.write(s or partical)
    if status == "closed" then break end
end
c:close()