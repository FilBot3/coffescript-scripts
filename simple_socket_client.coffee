#!/usr/bin/env coffee
#
#
#

# Require NodeJS's Network libraris
net = require 'net'

# Set the domain, or the host to connect to
domain = 'localhost'

# Set the port to connect to
port = 9001

# Setup the connection string.
connection = net.createConnection port, domain

# Look for initial connection and report that we're conencted.
connection.on 'connect', () ->
  console.log "Opened connection to #{domain}:#{port}."

# When receiving data, output the data being received.
connection.on 'data', (data) ->
  console.log "Receieved: #{data}"
  connection.end()

