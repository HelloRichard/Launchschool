class GoodDog
  @@number_of_dogs = 0 # @@ are class variables

  def initialize 
    @@number_of_dogs += 1
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end
end

puts GoodDog.total_number_of_dogs

dog1 = GoodDog.new
dog2 = GoodDog.new

puts GoodDog.total_number_of_dogs

class GoodPup
  DOG_YEARS = 7 # constants

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age = a * DOG_YEARS
  end
end

sparky = GoodPup.new("sparky", 4)
puts sparky.age
