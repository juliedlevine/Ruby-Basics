class BankAccount
    attr_accessor :transactions, :name

    def initialize(name)
        @name = name
        @transactions = []
        add_transaction("Initial Balance", 0)
    end

    def add_transaction(description, amount)
        @transactions.push(
            description: description,
            amount: amount
        )
    end

    def credit(description, amount)
        add_transaction(description, amount)
    end

    def debit(description, amount)
        add_transaction(description, -amount)
    end

    def balance
        total = 0
        @transactions.each do |transaction|
            total += transaction[:amount]
        end
        return sprintf("%0.2f", total)
    end

    def print_register
        puts "     " + @name + "'s Bank Account"
        puts "-------------------------------"
        puts "Description \t\t Amount"
        puts "-------------------------------"
        @transactions.each do |transaction|
            puts transaction[:description] + "\t\t$" + sprintf("%0.2f", transaction[:amount].to_s)
        end
        puts "-------------------------------"
        puts "Balance: $#{sprintf("%0.2f", balance)}"
        puts "-------------------------------"
    end

    def to_s
        "Name: #{name}, Balance: #{sprintf("%0.2f", balance)}"
    end
end

bank_account = BankAccount.new("Julie")
bank_account.credit("Paycheck", 100)
bank_account.debit("Groceries", 40)
bank_account.debit("Chick Fil A", 5.50)
bank_account.print_register
