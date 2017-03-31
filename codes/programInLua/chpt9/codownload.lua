local socket = require("socket")

host = "www.w3.org"
file = "/TR/REC-html32.html"

function download(host, file)
    local c = assert(socket.connect(host,80))
    local count = 0
    c:send("GET " .. file .. " HTTP/1.0\r\n\r\n")
    while true do
        local s, status, partical = receive(c)
        count = count + #(s or partical)
        if status == "closed" then
            break
        end
    end
    c:close()
    print(file, count)
end

function receive(connection)
    return connection:receive(2^10)
end

download(host , file)