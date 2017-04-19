# car1_speed = 500
# car2_speed = 300
#
# if car1_speed > car2_speed
#     puts "Car 1 is faster than car 2."
# end
#
# car2_speed += 300
#
# if car2_speed > car1_speed
#     puts "Car 2 is faster than car 1."
# end

print "Enter name: "
name = gets.chomp

case name
    when "Julie"
        puts "That's ny name, too!"
    else
        puts "Hi #{name}!"
end

print "Modify your name. Type 'uppercase' or 'reverse': "
answer = gets.chomp.downcase

case answer
    when "reverse"
        puts "This is your name in reverse: "
        puts name.reverse
    when "uppercase"
        puts "This is your name in uppercase: "
        puts name.upcase
    when "both"
        puts "This is your name reversed and uppercased: "
        puts name.reverse.upcase
    else
        puts "Ok, maybe later."
end
