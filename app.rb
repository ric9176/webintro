require 'sinatra'
require 'shotgun'

get '/random-cat' do

  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/form' do
  p params
  erb :form
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end
