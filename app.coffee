express = require 'express'
fs = require 'fs'        

config = require './config/config'
model_path = __dirname + '/app/models'
fs.readdirSync(model_path).forEach((file) ->
        require model_path+'/'+file)
        
env = process.env.NODE_ENV || 'development'
app = express()


(require './config/express')(app, config)
(require './config/routes')(app)

port = process.env.PORT || 3000
app.listen port
console.log 'Express app started on port'+port
