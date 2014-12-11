#!/usr/bin/env coffee
#
#
#

class Songs
    @_titles: 0 # Although its directly accessible, the leading _ defines it by
                # convention as private property.
    @get_count: ->
        @_titles
    
    constructor: ( @artist, @title ) ->
        @constructor._titles++ # Refers to <classname>._titles, in this case
	                       # Songs.titles

Songs.get_count()
#=> 0

song = new Songs( "Rick Astley", "Never Gonna Give You Up" )
Songs.get_count()
#=> 1

song.get_count()
#=> TypeError: Object <Songs> has no method 'get_count'

