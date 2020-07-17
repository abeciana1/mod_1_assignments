require "pry"

class Shelter

    attr_accessor :name, :current_occ, :capacity
    attr_reader :dogs_only_shelter
    
    def initialize(name, current_occ=0, capacity=0, exclusive)
        @name = name
        @current_occ = current_occ
        @capacity = capacity
        @dogs_only_shelter = dogs_only_shelter
    end

    def animals
        Animal.all.filter do |animal|
            if animal.shelter == self
                animal
            end
        end
    end

    def add_stray (animal_instance)
        if animal_instance.shelter == nil && animal_instance.owner == nil
            animal_instance.shelter = self
            at_capacity
        else
            puts "Sorry, but this animal has an owner."
        end
    end

    def dogs_exclusive(animal)
        if animal.type == "dog"
            puts "Welcome"
        else
            puts "Your 'dog' looks awfully like a #{animal.type}."
        end
    end

    private

    def add_to_shelter
        @current_occ += 1
    end

    def at_capacity
        if @current_occ == @capacity
            puts "Sorry, we're at capacity."
        else
            puts "Sure, we have room."
            add_to_shelter
        end
    end

end