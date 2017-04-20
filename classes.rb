class Name
    # Combines Attribete writer method & attribute reader method- allows you read and to re-write methods
    attr_accessor :title, :first_name, :middle_name, :last_name, :first_middle

    # Set a name for the object. This is what will be returned when you try to print just the class without any methods on it.
    def to_s
        name_with_title
    end

    def initialize(title, first_name, middle_name, last_name)
        # instance variable will be available to each method in the class
        @title = title
        @first_name = first_name
        @middle_name = middle_name
        @last_name = last_name
    end

    def full_name
        @first_middle = @first_name + " " + @middle_name
        @first_middle + " " + @last_name
    end

    def name_with_title
        @title + " " + full_name
    end

    def to_s
        name_with_title
    end
end

julie = Name.new("Ms.", "Julie", "Marie", "Dyer")
nick = Name.new("Mr.", "Nick", "Andrew", "Pettit")

puts nick.full_name
puts julie
