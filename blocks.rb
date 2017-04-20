# arr = [1, 2, 232, 234, 23, 1]
# arr.length.times do |i|
#     puts "Hello world!"
#     puts i
#     # implicit return - this returns the last item of the block, don't use the return keyword
#     true
# end

# def block_method
#     puts "This is the first line in block_method"
#     # Tells ruby to execute the code in the block
#     yield
# end
#
# block_method do
#     # This is the block
#     puts "This statement is called from the block."
# end

# def get_name(prompt, &block)
#     print prompt + ": "
#     name = gets.chomp
#     yield name if block_given?
#     # implicit return of the name variable
#     name
# end
#
# # My name now gets assigned to name, becuase name is returned from calling get_name
# my_name = get_name("Enter your name") do |name|
#     puts "That's a cool name, #{name}!"
# end

# string = "Treehouse"
# string.each_char do |c|
#     puts "#{c}".upcase
# end

# haiku = <<-EOF
# A string with three lines
# is considered multi lines
# Ruby code haiku
# EOF
# haiku.each_line do |line|
#     puts "* #{line}"
# end

# 5.downto(3) do |num|
#     puts "... " + num.to_s
# end
# puts "Liftoff"

# arr = [1, 2, 3, 4, 5, 6, 7]
# odds = arr.reject do |item|
#     item % 2 == 0
# end
# puts odds

# arr = [1, 2, 3, 4, 5, 6, 7]
# mapped = arr.map do |item|
#     item * 2
# end
# puts mapped

arr = [1, 2, 3, 4, 5, 6, 7]
even = arr.select do |num|
    num % 2 == 0
end
puts even.inspect
