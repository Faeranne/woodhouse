http = require 'http'
https = require 'https'
express = require 'express'
SocketIO = require 'socket.io'

app = express()
server = http.createServer app
io = SocketIO server

server.listen process.env.PORT || 80
https.createServer server
	.listen process.env.SSL_PORT || 443
