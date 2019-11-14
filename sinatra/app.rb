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

get '/cat-form' do
  erb(:cat_form)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
