def questionnaire
    puts "What is your name? "
    name = gets.chomp
    puts "\nHi #{name.capitalize}. How old are you? "
    age = gets.chomp
    puts "\nThat's a great age. What's your favorite movie? "
    movie = gets.chomp
    puts "\nOK great. So you are #{name}. And you are #{age} years old. And your favorite moive is #{movie}. Nice to meet you! I'm Ruby."
end

questionnaire
