class Account
    attr_reader :name, :balance
    def initialize(name, balance=100)
    @name = name
    @balance = balance
    end
    private 
    def pin
    @pin = 1234
    end
    def pin_error
    return "Access denied: incorrect PIN."
    end
    public
    def display_balance(pin_number)
    puts pin_number == pin ? "Balance: $#{@balance}." : pin_error
    end
    def withdraw(pin_number, amount)
    if @balance-amount > 0
        @balance -= amount
	    puts pin_number == pin ? "Withdrew #{amount}. New balance: $#{@balance}." : pin_error
	else
		@balance
		puts pin_number == pin ? "Cannot Withdaw #{amount}. Insufficient funds , Balance remains : $#{@balance}." : pin_error
        end
	end
    def deposit(pin_number, amount)
        @balance += amount
        puts pin_number == pin ? "Amount Deposited is #{amount} , Your Total balance is now : #{balance}" : pin_error
    end
    
end

checking_account = Account.new("Kareem Rady", 1000)
puts checking_account.withdraw(1234, 200)
puts checking_account.deposit(1234, 500)