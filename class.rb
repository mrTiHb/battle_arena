require 'pry'

require File.expand_path(File.dirname(__FILE__), './classes/animal')
require File.expand_path(File.dirname(__FILE__), './classes/cat1')
require File.expand_path(File.dirname(__FILE__), './classes/dog1')
require File.expand_path(File.dirname(__FILE__), './classes/arena')

dog1 = Dog.new('Bobik', "Taxa")
# dog.print_info

cat1 = Cat.new('Lusy', 'Persik', 4)
# cat.print_info

dog2 = Dog.new('Sharik', 'Buldog')

cat2 = Cat.new('Fatty', 'Homeless', 5)

arena = Arena.new(dog1, cat1, dog2, cat2)
arena.start_battle
arena.print_battle_results


# Dog bits cat. Print cat health
# Cat bits dog. Print dog health
# dog.bit(cat)
# cat.bit(dog)
# puts "Cat health: #{cat.health}"
# puts "Dog health: #{dog.health}"

# while cat.health > 0 && dog.health > 0
#   dog.bit(cat)
#   cat.bit(dog)
# end

# if cat.health > 0
#   puts "Cat winner!"
# else
#   puts "Dog winner!"
# end

# def start_battle(dog, cat)
#   # !! ДЗ
#   # Визначити порядок хто  перший (рандом або за якимось порядком)
#   # Переписати умови щоб небуло ніииїх (виключеняям можливості нанесення урону якощо хп в мінусі)
#   dog.bit(cat)
#   cat.bit(dog)
#   if cat.health > 0 && dog.health > 0
#     start_battle(dog, cat)
#   else
#     if dog.alive?
#       dog
#     elsif cat.alive?
#       cat
#     else
#       nil
#     end
#   end
# end
#
# winner = start_battle(dog, cat)
#
# if winner
#   puts "Winner: #{winner.class}. HP: #{winner.health}"
# else
#   puts 'Everybody dead!'
# end
#
# puts 'The End.'


# Збільшиии кількість бійців (напр: не 2 а 4 або 6)
# Використовуючи арену присвоїти кожному бійцю порядковий номер(сетер і гетер) і виводити номер, імя, клас і хп залишись.

# Extend Dog and Cat class with strength, dexterity, armor
# Extend battle arena to 4 members
