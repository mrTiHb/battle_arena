# # Variables
# Local variables
name = 'Stas'
surname = 'Kalinskyy'

# Instance variable
@name = 'Stas'
@surname = 'Kalinskyy'

# Global variables
# !! DO NOT USE !!
$name = 'Stas'
$surname = 'Kalinskyy'

# Data Types
'String'
123 # Int
123.321 # Float
true || false # Boolean
[1, true, false, 'string'] # Array
{ key: :value } # Hash
# Symbol
:variable
:'awdas'

Class.new # Object

# Conditions
if true
  # do if true
else
  # do if false
end
unless false
  # do if !false
end
if false
elsif true
else
end
case name
when 'Stas'
  # do if match
else
  # # do if no match found
end



# puts number unless number.even?

# Iterators
# #each do
#
# end
# while true
# end

# For hash
# [1, 2, 3, 4].each do |value|
#
# end
# hash = { key: :value, :name => 'Stas', 'adwa': :value, 'awdwa' => :value }
# hash.each_pair do |keys, values|
#   puts "Key: [#{keys}]. Value: [#{values}]"
# end

# hash.each do |(key, value)|
#   puts "#{key} => #{value}"
# end

# Functions => methods
# Without args
# def say_name
#   puts  'Stas'
# end
# say_name
# WIth args
# def say_name(name, surname = 'Kalinskyy')
#   puts name
#   puts surname
# end
# say_name('Stas', 'Solo')

# def say_name(*args)
#   args.each do |object|
#     if object.is_a?(String)
#       puts "String: --> #{object}"
#     elsif object.is_a?(Hash)
#       puts "Hash: => [#{object.inspect}]"
#     else
#       puts ""#{#{object.class}: #{object.inspect}"
#     end
#   end
# end
# say_name('Stas')
# say_name('Stas', 'Solo', 123, 123.123, { key: :value }, [12, 32])


# # Home Task
# Dog: Gulka, age - 4 years
# Cat: Kitty, age - 2 years
# Create variables for each data for dog and cat (4 variables)
# Create structure for dog and cat (2 hashes) with appropriate data (keys = label (e.g.: name), and value)
# Keys => :name, :age..
# Create method to display data for each animal with appropriate display:
# Format: "[<DOG (or CAT)>] Name: <name>; Age: <age>"

name_dog = 'Gulka'
age_dog = 4
name_cat = 'Kitty'
age_cat = 2

dog = { id: 'Dog', name: name_dog, age: age_dog, type: 'BulDog' }
cat = { id: 'Cat', name: name_cat, age: age_cat }
pig = { id: 'Pig', name: 'Piggistroj', age: 5, type: 'Huggies', size: '90x60x90' }

def print_animals(*animals)
  animals.each do |animal|
    id = animal.delete(:id)
    data = animal.map {|(key, value)| [key.capitalize, value].join(': ') }.join('; ')
    puts "#{id.upcase} #{data}"
  end
  # { |(key, value)| [key.capitalize, value].join(': ') }.join('; ')}
end

# Print Dog
print_animals(dog, cat, pig)
