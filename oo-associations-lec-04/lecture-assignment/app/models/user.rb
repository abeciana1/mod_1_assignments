require 'pry'


class User
    attr_reader :views
    attr_writer :ssn
    attr_accessor :name, :age, :height, :nickname 
    @@all = []

    def initialize(name, age, ssn, nickname=nil)
        @name = name
        @age = age
        @ssn = ssn
        @nickname = nickname
        @@all << self
        @views = 0
    end

    def self.all
        @@all
    end

    def view_profile
        puts "Here is your profile"
        puts "Your name is: #{name}"
        puts "Your age is: #{self.age}"
        puts "Your age is: #{self.nickname}"
        increment_views
    end
    
    def self.dogs_with_owner
        Animal.all.filter do |pet_instance|
            if pet_instance.type == "dog" && pet_instance.owner != nil
                puts pet_instance
            end
        end
    end

    def all_dogs
        pets.select { |animal|
            animal.type == 'dog' || animal.type == 'husky'
        }
    end

    def lend_a_pet(pet, new_owner)
        if check_owner_status(pet)
            pet.owner = new_owner
        end
    end

    def search_by_species(species)
        Animal.all.select do |animal_instance|
            animal_instance.type == species
        end
    end

    def adopt_animal(animal_instance)
        if self.pets.count < 3
            animal_instance.shelter = nil
        else
            puts "Stop it. Get some help."
        end
    end
    
    def pets 
        Animal.all.select do |a|
            a.owner == self
        end
    end

    def add_shelter(pet, shelter)
        if self == pet.owner
            pet.owner = nil
            pet.shelter = shelter
            puts "You're no longer the owner of #{pet.name}."
        else
            puts "You can give up owners a pet you don't own."
        end

    end

    private


    def increment_views
        @views += 1
    end

    def check_owner_status(animal)
        if animal.owner == self
            true
            puts "You're the owner of this #{animal.type}"
        else
            false
            puts "You're not the owner of this #{animal.type}."
        end
    end

end