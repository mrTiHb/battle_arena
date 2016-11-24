class Cat < Animal
  def initialize(name, type, age)
    @age = age

    super(name, type)

    # @health = 150
  end
end
