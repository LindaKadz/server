require 'sinatra'
require './account'
require 'sinatra-activerecord'

ActiveRecord::Base.establish_connection(
 :adapter => 'sqlite3',
 :database => 'tkash.sqlite3'
 )

get '/' do
  erb :general
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
    @name= "linda"
    erb :deposit
end

post '/deposit' do
  acc = Account.new
  amount = params[:amount].to_i
  acc.deposit(amount)
  @balance= "Your balance is #{acc.balance}"
  #erb :balance

end

get '/withdraw' do
    @name= "linda"
  erb :withdraw
end

post '/withdraw' do

  acc = Account.new
  amount = params[:amount].to_i
  agent_number = params[:agent_number].to_i
  pin = params[:pin].to_i
  acc.withdraw(amount, agent_number, pin)


end

get '/balance' do
     acc= Account.new
    @name= "linda"
    @balance= acc.balance
  erb :balance
end
