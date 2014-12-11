#!/usr/bin/env coffee
#
#
#

http = require 'http'

http.get ( 'http://127.0.0.1:4567' ), (res) ->
	console.log res.statusCode
