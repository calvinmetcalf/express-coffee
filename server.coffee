express = require 'express'
stylus = require 'stylus'
assets = require 'connect-assets'

kublai = express.createServer()
kublai.use assets()
kublai.set 'view engine', 'jade'

kublai.get '/', (req, resp) -> resp.render 'index'

kublai.listen process.env.VMC_APP_PORT or 3000, -> console.log 'Listening...'