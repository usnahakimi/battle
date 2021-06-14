require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
    "Hello World"
end

get '/secret' do
    'This is a secret page'
end

get '/random-cat' do
    @name = ["Amigo", "Misty", "Almond"].sample
    erb(:index)
end

get '/named-cat' do
    p params
    @name = params[:name]
    erb(:index)
end