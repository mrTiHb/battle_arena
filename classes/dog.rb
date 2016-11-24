class Dog
  CRITICAL_CHANCE = 7

  attr_reader :name#, :age, :type
  attr_writer :name#, :age, :type
  attr_reader :health

  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
    @damage = rand(1..25)
    @health = 100
  end

  def print_name
    puts(name)
  end

  def print_age
    puts @age
  end

  def print_type
    puts @type
  end

  def print_info
    puts "Dog, name: #{name}, age: #{@age}, type: #{@type}"
  end

  def alive?
    @health > 0
  end

  def hit(damage)
    @health -= damage
  end

  def bit(target)
    target.hit(hit_damage)
  end

  def hit_damage
    # See Cat#hit_damage
    @damage
  end

  # attr_accessor :name
  # attr_reader :name
  # attr_writer :name
  # =>
  # def name
  #   @name
  # end
  #
  # def name=(name)
  #   @name = name
  # end
end
