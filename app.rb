require 'sinatra'
require 'shotgun'

set :session_secret, "Yo"

get '/' do
  "Hello World"
end

get '/secret' do
  "Goodbye"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/form' do
  "post"
end
