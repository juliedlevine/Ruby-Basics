class Monster
    attr_reader :name, :actions

    def initialize(name)
        @name = name
        @actions = {
            scream: 0,
            scare: 0,
            run: 0,
            hide: 0
        }
    end

    def print_scoreboard
        puts "\n"
        puts "-" * 20
        puts "#{name}'s Scoreboard"
        puts "-" * 20
        @actions.each do |key, value|
            puts "#{key.capitalize}s: #{value}"
        end
        puts "-" * 20
    end

    def say(&block)
        puts "#{name} says... "
        yield
    end

    def scream(&block)
        actions[:scream] += 1
        print "#{name} screams!"
        yield
    end

    def scare(&block)
        actions[:scare] += 1
        print "#{name} scares you!"
        yield
    end

    def run(&block)
        actions[:run] += 1
        print "#{name} is running!"
        yield
    end

    def hide(&block)
        actions[:hide] += 1
        print "#{name} is hiding!"
        # instance of the monster given to the block so the block has access it
        yield self if block_given?
    end
end

monster = Monster.new("Fluffy")
monster.say do
    puts "Welcome to my home."
end
monster.scream do
    puts " BOO!!"
end
monster.scare do
    puts " Go away!"
end
monster.hide do |monster|
    puts " I'm hiding!"
    puts monster.actions.inspect
end
monster.print_scoreboard
