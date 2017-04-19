# loop do
#     print "Do you want to continue? (y/n) "
#     answer = gets.chomp.downcase
#     if answer == "n"
#         print "Bye!"
#         break
#     end
# end

# random_number = Random.new.rand(5)
# loop do
#     print "Guess the number between 0 and 5 (e to exit): "
#     answer = gets.chomp
#     if answer == "e"
#         puts "The number was #{random_number}"
#         break
#     else
#         if answer.to_i == random_number
#             puts "You guessed correctly!"
#             break
#         else
#             puts "Try again."
#         end
#     end
# end

# answer = ""
# while answer != "n"
#     print "Do you want me to repeat this loop? (y/n) "
#     answer = gets.chomp.downcase
# end
#
# def print_hello(number_of_times)
#     i = 0
#     while i < number_of_times
#         puts "hello"
#         i += 1
#     end
# end
#
# times = 0
# while times < 5
#     print "How many times do you want to print 'hello'? (Enter a number greater than 5 to exit): "
#     times = gets.chomp.to_i
#     print_hello(times)
# end


# answer = ""
# until answer == "n"
#     print "Do you want this loop to continue? (y/n) "
#     answer = gets.chomp
# end


# array = [0, 1, 2, 3, 4, 5]
# array.each do |item|
#     item = item + 2
#     puts "The current item + 2 is #{item}."
# end

# 5.times do |i|
#     if i == 2
#         puts "Hola!"
#     else
#         puts "Hello!"
#     end
# end

arr = [1, 34, 25, 13, 5]

for item in 1..10 do
    puts "The current item is #{item}."
end
