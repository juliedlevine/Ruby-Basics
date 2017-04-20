require "yaml"

class PhoneBook
    attr_reader :name

    def initialize(name)
        @name = name
        @entries = []
        open
    end

    def search
        print "Name: "
        search = gets.chomp
        found = false
        @entries.each do |entry|
            if entry[:name] == search
                puts "Found entry for #{search}: #{entry[:number]}"
                found = true
            end
        end
        if found == false
            puts "Entry for #{search} not found."
        end
    end

    def add_entry
        print "Name: "
        name = gets.chomp
        print "Number: "
        number = gets.chomp
        @entries.push(
            name: name,
            number: number)
        puts "Entry for #{name} added."
    end

    def delete_entry
        print "Entry to delete? "
        delete = gets.chomp
        @entries.delete_if do |entry|
            entry[:name] == delete
        end
        puts "Deleted entry for #{delete}."
    end

    def list_entries
        puts "\n"
        puts "---------------------"
        puts "#{name}'s Phone Book"
        puts "---------------------"
        @entries.each do |entry|
            puts "#{entry[:name]} \t#{entry[:number]}"
        end
    end

    def open
        if File.exist?("contacts.yml")
            @entries = YAML.load_file("contacts.yml")
        end
    end

    def save
        File.open("contacts.yml", "w") do |file|
            file.write(@entries.to_yaml)
        end
        puts "Contacts saved to contacts.yml file."
    end

    def print_instructions
        puts <<-INSTRUCTIONS
---------------------
Electronic Phone Book
=====================
1. Look up an entry
2. Set an entry
3. Delete an entry
4. List all entries
5. Print instructions
6. Quit
--------------------
INSTRUCTIONS
    end

    def main
        print_instructions
        answer = ""
        while answer != 6
            print "\nWhat do you want to do? (1 - 6) "
            answer = gets.chomp.to_i
            if answer == 1
                search
            elsif answer == 2
                add_entry
            elsif answer == 3
                delete_entry
            elsif answer == 4
                list_entries
            elsif answer == 5
                print_instructions
            elsif answer == 6
                save
                puts "Bye!"
                break
            end
        end
    end

end

myPhoneBook = PhoneBook.new("Julie")
myPhoneBook.main
