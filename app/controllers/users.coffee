exports.login = (req ,res) ->
        console.log 'login'

        res.writeHead(200, {'Content-Type': 'text/plain'});
        res.end('Hello Login\n');