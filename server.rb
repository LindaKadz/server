require 'sinatra'
require './account'

get '/' do
  'Hello World!'
end

get '/linda' do
  'Hello World!'
end

get '/' do
  'matched root'
end

get '/name' do
  'matched name'
end

get '/deposit/:amount' do
  "You have deposited #{params[:amount]}"
end

get '/deposit' do
  acc = Account.new
  amount = params[:amount].to_i
  acc.deposit(amount)
  "Your new balance is #{acc.balance}"
end

get '/withdraw' do
  erb :withdraw
end

post '/withdraw' do
  acc = Account.new
  amount = params[:amount].to_i
  agent_number = params[:agent_number].to_i
  pin = params[:pin].to_i
  acc.withdraw(amount, agent_number, pin)

  "You have withdrawn #{amount}, your balance is #{acc.balance}"
end
