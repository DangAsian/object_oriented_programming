#Class (umbrella)
#Instances state

class BankAccount

  def initialize(balance, interest_rate)
    @balance = balance
    @interest_rate = interest_rate
  end

  def balance()
    return @balance
  end

  def interest_rate()
    return @interest_rate
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def gain_interest()
    @balance *= (interest_rate + 1)
  end

#
#
end
#
# person1 = BankAccount.new(200, 1.13)
