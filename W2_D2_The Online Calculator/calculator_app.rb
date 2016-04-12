require 'sinatra'
require "sinatra/reloader" if development?
require'/Users/javi/Desktop/Ironhack/Week_2/Day_2/calculator/lib/calculator.rb'
require 'pry'

get '/' do
  erb(:calculator_view)
end

post '/calculate' do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  operation = params[:operation]
  @result = Calculator.operator(operation, first, second)
  erb(:calculator_view_result)
end

post '/save_result' do
  @result = [:save_result]
  Calculator.save(@result)
end
