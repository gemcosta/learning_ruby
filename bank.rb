class BankAccount
  attr_reader :name
  
  def initialize(name)
    @name = name
    @transactions = []
    add_transaction("Beginning Balance", 0)
  end #end initialize
  
  def add_transaction(description, amount)
    @transactions.push(description: description, amount: amount)
  end #end add method

  def credit(description, amount)
    add_transaction(description, amount)
  end #end credit method
  
  def debit(description, amount)
    add_transaction(description, -amount)
  end #end debit method

  def balance
    balance = 0.0
    @transactions.each do |transaction|
      balance += transaction[:amount]
      end #end DO statement
    return balance
   end #end balance method
  
  def to_s
    "Name: #{name}, Balance: #{sprintf("%0.2f", balance)}"
  end #end to_s method
    
  def print_register
    puts "#{name}'s Bank Account"
    puts "-" * 40
    
    
    puts "Description".ljust(30) + "Amount".rjust(10)
    @transactions.each do |transaction|
      puts transaction[:description].ljust(30) + sprintf("%0.2f",transaction[:amount]).rjust(10)
      end #end do method
    puts "-" * 40
    puts "Balance".ljust(30) + sprintf("%0.2f", balance).rjust(10)
    puts "-" * 40

    end # end print_register def
end #end class definition


bank_account = BankAccount.new("Gabe")
bank_account.credit("Paycheck", 100)
bank_account.debit("Groceries", 40)
bank_account.debit("Gas", 10.50)
puts bank_account
puts "Register:"
bank_account.print_register

