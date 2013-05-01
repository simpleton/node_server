

module.exports = (app) ->
        console.log 'routes.coffee'
        users = require '../app/controllers/users'
        main = require '../app/controllers/domain'
        
        app.get '/', main.main
        app.get '/login', users.login