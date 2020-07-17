require 'pry'
require_relative './app/models/user'
require_relative './app/models/animal'
require_relative './app/models/shelter.rb'


vlad = User.new("Vlad", 21, 1234)
jeff = User.new("Jeff", 21, 1234)
jenn = User.new("Jennifer", 21, 1234, "Jenn")
# jennifer = User.new("Jennifer", 21, 1234, "Jenny")

animal_rescue = Shelter.new("Animal Rescue", 0, 50, false)
safe_place = Shelter.new("Safe Place", 10, 40, false)
at_capacity = Shelter.new("At Capacity", 30, 30, false)
closeto_cap = Shelter.new("Closeto Cap", 19, 20, false)
dogs_only = Shelter.new("Dogs Only", 5, 20, true)

bob = Animal.new("snake", "Bob", "hiss", jenn, nil)
coco = Animal.new("dog", "Coco", "bark bark", jeff, nil)
momo = Animal.new("flying lemur", "momo", "slkdfjlsk", jenn, nil)
sophie = Animal.new("dog", "sophie", "woof woof", jeff, nil)
lassie = Animal.new("dog", "Lassie", "Woof!", nil, animal_rescue)
clifford = Animal.new("dog", "Clifford", "Bark!", nil, safe_place)
stray = Animal.new("dog", "Stray", "woof woof!", nil, nil)
stray2 = Animal.new("dog", "Stray2", "woof woof!", nil, nil)


# safe_place.add_stray(stray)
# puts safe_place.animals
# puts safe_place.current_occ
# dogs_only.dogs_exclusive(lassie)
# dogs_only.dogs_exclusive(bob)

# at_capacity.add_stray(stray2)
# binding.pry

# closeto_cap.add_shelter("Coco")
# puts Animal.all
# puts Animal.find_all_in_shelter

# puts User.dogs_with_owner

# Animal.find_by_shelter(safe_place)


# binding.pry