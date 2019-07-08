require 'sinatra'
require 'shotgun'

set :session_secret, "Yo"

get '/' do
  "Hello World"
end

get '/secret' do
  "Goodbye"
end

get '/cat' do
  @catname = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end
