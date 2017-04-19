# print "What is your favorite number? "
# number = gets.chomp.to_i
#
# if (number == 3) || (number == 5)
#     puts "That's my favorite number!"
# elsif (number > 10) && (number.even?)
#     puts "That's a pretty high even number!"
# elsif (number.odd?) && (number % 3 == 0)
#     puts "That number is divisible by 3 and odd, cool!"
# end


car1_speed = 50
car2_speed = 60

if !(car1_speed == car2_speed) && (car1_speed > 40)
    puts "Car 1 and car 2 are not going the same speed."
end
