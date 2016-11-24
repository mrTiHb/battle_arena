# Dynamically generate hash of string or integer keys/values [size: 20]
# Filter hash by keys and delete values where keys if number then more than 10, if string -> if contains 'b'
# Відфільтрувати хеш та видалити ключ/значення якщо: ключ-цифра - білшше за 10, ключ-строка - містить символ 'b'
# Display hash keys all that are : numeric - between 3 and 8, string - that has 'a'
# Display values if : numeric - odd, string - includes 'Z'
# Use methods

def random_val
  condition = [0, 1].sample
  if condition.zero?
    (1..20).to_a.sample
  else
     (1..4).map { |_e| ('A'..'z').to_a.sample }.join
  end
end

def delete_hash_keys(hash_to_process)
  if hash_to_process.empty?
    puts 'Empty hash given'
  else
    hash_to_process.keys.each do |key|
      if key.is_a?(Numeric) && key >= 10 || key.is_a?(String) && key.include?("b")
        hash_to_process.delete(key)
      end
    end
  end
end

def select_delete(hash)
  hash.keys.each do |key|
    if key.is_a?(Numeric) && key > 3 && key < 8 || key.is_a?(String) && key.include?("a")
      puts " ******* #{key} => #{hash[key]}"
    end
  end
end

def have_odd_z(hash)
  hash.keys.each do |key|
    if key.is_a?(Numeric) && key.odd? || key.is_a?(String) && key.include?("Z")
      puts " sss #{key} => #{hash[key]}"
    end
  end
end

hash = {}

while hash.size < 100
  hash[random_val] = random_val
end

have_odd_z(hash)

delete_hash_keys(hash)

select_delete(hash)

ary = [1, 2, 3, 431, 1234, 43, 324, 432, 124, 421, 124, 42, 124]
p ary[-5] #=> 124
p ary[0..5] #=> [1, 2, 3, 431, 1234]
p ary[5, 3] #=> [43, 324, 432]
p ary[-100] #=> nil or false
p ary[0...5] #=> [1, 2, 3, 431]
