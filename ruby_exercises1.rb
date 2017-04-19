# Hello, you!
# print "What is your name? "
# name = gets.chomp
# print "Hello #{name}!"

# HELLO, YOU!
# print "What is your name? ".upcase
# name = gets.chomp
# puts "hello, #{name}!".upcase
# puts "your name has #{name.length} letters in it! awesome!".upcase

# Madlib
# puts "Please fill in the blanks below:"
# puts "____(name)____'s favorite subject in school is ____(subject)____."
# print "\n.name? "
# name = gets.chomp
# print "subject? "
# subject = gets.chomp
# print "#{name.capitalize}'s favorite subject in school is #{subject.capitalize}."

# Day of the Week
# print "Day (0 - 6)? "
# day = gets.chomp.to_i
# if day == 0
#     puts "Sunday"
# elsif day == 1
#     puts "Monday"
# elsif day == 2
#     puts "Tuesday"
# elsif day == 3
#     puts "Wednesday"
# elsif day == 4
#     puts "Thursday"
# elsif day == 5
#     puts "Friday"
# elsif day == 6
#     puts "Saturday"
# end

# Work or Sleep In?
# print "Day (0 - 6)? "
# day = gets.chomp.to_i
# if (day >= 1) && (day <= 5)
#     puts "Go to work"
# else
#     puts "Sleep in"
# end

# Tip Calculator
# print "Total bill amount? "
# amount = gets.chomp.to_i
#
# print "Level of service? (good, fair, bad) "
# service = gets.chomp
# if service == "good"
#     tip = amount * 0.2
# elsif service == "fair"
#     tip = amount * 0.15
# elsif service == "bad"
#     tip = amount * 0.1
# end
#
# total = amount + tip
# print "Split how many ways? "
# split = gets.chomp.to_i
#
# puts "Tip amount: $%.2f" % tip
# puts "Total amount: $%.2f" % total
# puts "Amount per person: $%.2f" % (total / split)


# 1 to 10
# num = 1
# while num < 11
#     puts num
#     num += 1
# end


# Coins
answer = "yes"
coins = 0
while answer == "yes"
    print "You have #{coins} coins. "
    puts "Do you want another? "
    answer = gets.chomp
    coins += 1
    if answer != "yes"
        puts "Bye"
        break
    end
end
