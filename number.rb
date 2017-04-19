# get someones name, ask a question to enter a number, check if that number is divisble by 3

def ask_name()
    print "What is your name? "
    name = gets.chomp
    puts "Hi, #{name}, welcome to my Ruby program!"
end

def ask_number()
    print "What's your favorite number? "
    number = gets.chomp.to_i
    puts "OK thanks, I'm going to check if #{number} is divisble by 3."
    if (number % 3 == 0)
        puts "Yes! That number is divisble by 3."
    else
        puts "Nope that number is not divisble by 3."
    end
end

ask_name()
ask_number()
