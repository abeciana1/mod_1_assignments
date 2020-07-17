class Animal
    attr_accessor :type, :name, :speak, :owner, :shelter
    @@all = []

    def initialize(type, name, speak, owner=nil, shelter=nil)
        @type = type
        @name = name
        @speak = speak
        @owner = owner
        @shelter = shelter
        @@all << self
    end

    def self.no_home 
        self.all.filter do |animal|
            animal.owner == nil
        end
    end

    def self.find_all_adopted
        self.all.filter do |animal|
            animal.owner != nil
        end
    end

    def self.find_all_in_shelter
        self.all.filter do |animal|
            animal.shelter != nil
        end
    end

    def self.all 
        @@all
    end

    def say_hello
        puts "#{self.name} says #{self.speak}!"
    end

    def self.find_by_shelter(shelter)
        self.all.filter do |animal|
            if animal.shelter != nil && animal.shelter == shelter
                puts animal
            end
        end
    end

end