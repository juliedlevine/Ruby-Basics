puts "I'm thinking of a number between 1 and 10."
secret_num = rand(1..10)

guesses = 5
while guesses > 0
    puts "You have #{guesses} guesses left."
    print "What's the number? "
    guess = gets.chomp.to_i
    guesses -= 1

    # Win scenario
    if guess == secret_num
        puts "Yes! You win!"
        print "Do you want to play again? (y/n) "
        play_again = gets.chomp.downcase
        if play_again == "y"
            guesses = 6
            secret_num = rand(1..10)
        else
            puts "Bye!"
        end

    # Continue guessing scenarios
    elsif guess > secret_num
        puts "#{guess} is too high."
    elsif guess < secret_num
        puts "#{guess} is too low."
    end

    # Run out of guesses scenario
    if guesses == 0
        puts "You ran out of guesses!"
        puts "The secret number was #{secret_num}"
        print "Do you want to play again? (y/n) "
        play_again = gets.chomp.downcase
        if play_again == "y"
            guesses = 6
            secret_num = rand(1..10)
        else
            puts "Bye!"
        end
    end

end
