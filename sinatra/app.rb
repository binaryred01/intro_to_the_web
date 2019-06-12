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

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

# <div style='border: 3px dashed red'>
#   <img src='http://bit.ly/1eze8aE'>
# </div>
# This code seems to mess up the border by having it extend to the right.
