require 'date'
class Account
  attr_accessor :balance
  AGENT_NUMBERS = [34, 7, 381, 98]
  DATE = Date.today

def initialize
  @balance= 1000
  @pin= 1234
end

def withdraw(amount, agent_number, pin, transaction_cost)
 return 'Failed, wrong agent number' unless agent_number_exist(agent_number)
 return 'Wrong PIN' unless @pin == pin

  if (@balance < amount)
   	{balance: @balance , time: @date , status: false}

  else
    @balance -= (amount + transaction_cost)
    { transactioncode: 'WRXP45P', balance: @balance ,amount: 200 , time: @date , transaction_cost: 10, status: true }
  end
end

def deposit (amount)
	@balance += amount
	amount
end

def agent_number_exist(agent_number)
   AGENT_NUMBERS.include?agent_number
end

def send_money(receiver, amount, pin)
  @balance -= amount
  receiver.balance += amount
end

def date(date)
   DATE.include?date
end

end
