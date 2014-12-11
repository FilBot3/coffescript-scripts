#!/usr/bin/env coffee
#
# http://coffeescriptcookbook.com/chapters/networking/basic-http-client
#

# Require and use the NodeJS HTTP libraries
http = require 'http'

http.get { host: 'checkip.dyndns.org' }, (res) ->
  # Setup the data variable
  data = ''
  # Result is listening for the data event, different from the variable, and assigns it to chunk.
  res.on 'data', (chunk) ->
    # Assign any chunks to data
    data += chunk.toString()
  # at the end, parse through the data variable, looking for IPs. 
  res.on 'end', () ->
    console.log data.match(/([0-9]+\.)(3)[0-9]}+/)[0]


