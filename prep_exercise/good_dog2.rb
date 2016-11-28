#States track attributes for individual objects (instance variable)
#Behaviors are what objects are capable of doing (instance methods)

# Instance Variables/Methods
class GoodDog
  attr_accessor :name, :height, :weight #faster way to use getter and setter method
  # attr_reader to only get getter method
  # attr_writer to only get setter method

  def initialize(n, h, w)
    @name = n #@ symbol is called an instance variable
    @height = h
    @weight = w
  end

  # def get_name #getter method retrieving don't need get 
  #   @name
  # end

  # def set_name=(name) #setter method don't need set
  #   @name = name
  # end

  def speak
    "#{name} say Arf!"
  end

  def change_info(n, h, w)
    self.name = n 
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end
end

sparky = GoodDog.new("Sparky", "12 inches", "10 lbs")
puts sparky.info

sparky.change_info("Rex", '24 inches', '4 lbs')
puts sparky.info

puts sparky.name
sparky.name = "Spartacus"
puts sparky.name

puts " "

#Exercise 1
class MyCar
  attr_accessor :color
  attr_reader :year, :model

  def self.gas_mileage(gallons, miles)
    puts "#{miles/gallons} miles per gallon of gas"
  end

  def initialize(y, c, m)
    @year = y
    @color = c 
    @model = m
    @speed = 0
  end

  def speed_up(num)
    @speed += num
    puts "You push the gas and accelerate #{num} mph"
  end

  def brake(num)
    @speed -= num
    puts "You push the brake and decelerate #{num} mph"
  end

  def current_speed
    puts "You are now going #{@speed} mph."
  end

  def shut_down
    @speed = 0
    puts "Let's park this bad boy!"
  end

  def spray_paint(color)
    self.color = color
    puts "Your new #{color} paint job looks great!"
  end

  def to_s 
    "My car is a #{year}, #{model}, #{color}."
  end
end

honda = MyCar.new(2017, 'honda civic', 'white')
honda.speed_up(20)
honda.current_speed
honda.speed_up(20)
honda.current_speed
honda.brake(15)
honda.current_speed
honda.brake(15)
honda.current_speed
honda.shut_down
honda.current_speed
honda.color = "black"
puts "The Honda color is " + honda.color + "."
puts honda.year
honda.spray_paint('silver')
MyCar.gas_mileage(16, 562)
my_car = MyCar.new("2014", "Ford F150", 'Yellow')
puts my_car


