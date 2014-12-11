#!/usr/bin/env coffee
#
#
#

class Songs
    _titles: 0 # This is a private property

    get_count: ->
        @_titles
    
    constructor: ( @artist, @title ) ->
        @_titles++

song = new Songs( "Rick Astley", "Never Gonna Give You Up" )
song.get_count()
#=> 1

Songs.get_count()
#=> TypeEffor: Object function Songs(artist, title) ... has no method 'get_count'

