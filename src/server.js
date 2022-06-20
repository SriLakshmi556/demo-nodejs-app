var http = require('http');

var server = http.createServer(function(request, response) {

    response.writeHead(200, {"Content-Type": "text/plain"});
    response.end("Hello, Welcome to sample nodejs app built by ECS Fargate service with Jenkins and Docker containers using ECR repo");

});

var port = 3000;
server.listen(port);
module.exports = server
console.log("Server is available on Port:", port);
