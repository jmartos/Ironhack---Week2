require 'sinatra'
require "sinatra/reloader" if development?


get '/ascii/:one_random_word' do 
  @one_random_word = params[:one_random_word]
  erb(:art)
end