#!/usr/bin/env coffee
#
#
#

#for x in process.argv[1..-1] 
#  console.log x

#console.log arg for arg in process.argv

switches = [
  [ '-h', '--help', 'Prints this output.' ]
  [ '-f', '--file', 'shows the name of the file' ]
]

parser = new OptionParser switches, helpBanner
options = parser.parse process.argv
consoe.log options
