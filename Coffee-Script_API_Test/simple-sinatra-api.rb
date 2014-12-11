#!/usr/bin/env ruby
#
#
#

require 'sinatra'

get '/' do
	redirect to('/index')
end

get '/index' do
	erb :index
end
__END__

@@ index
<h1>Hello World!</h1>
