require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
    "Hello World"
end

get '/secret' do
    'This is a secret page'
end

get '/cat' do
    erb(:index)
end