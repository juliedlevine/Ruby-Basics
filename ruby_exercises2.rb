# 1 to 10
# num = 1
# while num < 11
#     puts num
#     num += 1
# end

# n to m
# print "Start from: "
# num = gets.chomp.to_i
# print "End on: "
# end_num = gets.chomp.to_i
# while num <= end_num
#     puts num
#     num += 1
# end

# Print a square II
# print "How big is the square? "
# size = gets.chomp.to_i
# line = 0
# while line < size
#     puts "*" * size
#     line += 1
# end

# Print a box
# print "Width? "
# width = gets.chomp.to_i
# print "Height? "
# height = gets.chomp.to_i
# puts "*" * width
# line = 0
# spaces = width - 2
# while line < height - 2
#     puts "*" + (" " * spaces) + "*"
#     line += 1
# end
# puts "*" * width

# Print a Triangle II
# print "Height of triangle? "
# height = gets.chomp.to_i
# spaces = height
# for x in (1..(height * 2)).step(2)
#     puts " " * spaces + "*" * x
#     spaces -= 1
# end

# Print a Banner
# print "Text for banner? "
# text = gets.chomp
#
# puts "*" * (text.length + 4)
# puts "* " + text + " *"
# puts "*" * (text.length + 4)
