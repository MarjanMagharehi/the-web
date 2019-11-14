require 'sinatra'

require 'shotgun'

set :session_secret, 'super secret'

get '/' do
  "Hello, good morning!"
end

get '/secret' do
  "That's why her hair is so big, it's full of secrets."
end

get '/lionking' do
  "Oh, I just can't wait to be king!"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named-cat' do
  @name = params[:name]
  erb(:index)
end
