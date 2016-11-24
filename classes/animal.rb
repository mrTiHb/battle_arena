class Animal
  attr_reader :name, :type, :damage, :health, :strenght, :agility, :armor

  attr_accessor :arena_id

  def initialize(name, type)
    @name = name
    @type = type
    @health = 100
    @strength = rand(10..15)
    @agility = rand(10..15)
    @armor = rand(1..15)
    @damage = calculate_damage
  end

  def alive?
    @health > 0
  end

  def print_info
    puts ("Cat, name: #{@name}, type: #{@type}")
  end

  def hit(damage)
    @health -= damage
  end

  def bit(target)
    current_damage = hit_damage

    health_left = target.hit(current_damage)

    print_bit_action_info(target, current_damage, health_left)
  end

  def hit_damage
    @damage
  end

  def calculate_damage
    @strength + (@agility / 2).round
  end

  def print_bit_action_info(target, current_damage, hp_left)
    # "WHO [ARENA_ID][hp: CURRENT_HP] [DAMAGE] target: TARGET_WHO [TARGET_ARENA_ID] [hp: TARGET_HP LEFT]"
    puts "#{self.class} hit target [#{target.class}] with damage: #{current_damage}. Left: [#{hp_left}]"
  end
end
