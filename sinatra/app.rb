require "sinatra"

get '/' do
  "Hello World"
end

get '/secret' do
  "Look, a website!"
end

get '/america' do
  "this is america."
end

get '/pokemon' do
  "this is a pikachu"
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

get '/name-form' do
  erb(:name_form)
end
