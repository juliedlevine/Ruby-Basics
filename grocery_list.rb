def create_list
    print "What is the list name? "
    name = gets.chomp
    list_hash = {
        "name" => name,
        "items" => []
    }
    return list_hash
end

def add_list_item
    print "What do you want to add? "
    item_name = gets.chomp
    print "How many of this item? "
    quantity = gets.chomp.to_i
    item_hash = {
        "name" => item_name,
        "quantity" => quantity
    }
    return item_hash
end

def print_separator(character="-")
    puts character * 60
end

def print_list(list)
    puts "\nList: #{list['name']}"
    print_separator()
    list["items"].each do |item|
        puts "\tItem: " + item['name'] + "\t\t\t" +  "Quantity: " + item['quantity'].to_s
    end
    print_separator()
end

my_list = create_list()
my_list['items'].push(add_list_item())
my_list['items'].push(add_list_item())
my_list['items'].push(add_list_item())

print_list(my_list)
