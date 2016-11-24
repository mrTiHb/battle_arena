class Cat
  CRITICAL_CHANCE = 5

  attr_reader :health

  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
    @damage = rand(1..25)
    @health = 100
    @max = 100
  end

  def print_info
    puts ("Cat, name: #{@name}, age: #{@age}, type: #{@type}")
  end

  def hit(damage)
    @health -= damage + @max
  end

  def alive?
    @health > 0
  end

  def bit(target)
    target.hit(hit_damage)
  end

  def hit_damage
    # Calculate critical damage
    @damage
  end
end
