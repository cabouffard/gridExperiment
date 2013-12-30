/*
var app = require('express')()
  , server = require('http').createServer(app)
  , io = require('socket.io').listen(server);

app.get('/', function (req, res) {
  res.sendfile(__dirname + '/index.html');
});

io.sockets.on('connection', function (socket) {
  socket.emit('news', { hello: 'world' });
  socket.on('my other event', function (data) {
    console.log(data);
  });
});

exports = module.exports = server;
// delegates user() function
exports.use = function() {
  app.use.apply(app, arguments);
};

*/

 
var express = require("express");
var app = express();
var port = 3700;
 
app.get("/", function(req, res){
    res.send("It works!");
});
 
app.listen(port);
console.log("Listening on port " + port);