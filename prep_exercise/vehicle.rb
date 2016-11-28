class Vehicle
  attr_accessor :color
  attr_reader :year, :model

  @@num_of_vehicles = 0 

  def self.num_of_vehicles
    puts "This program has created #{@@num_of_vehicles} vehicles"
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles/gallons} miles per gallon of gas"
  end

  def initialize(y, m, c)
    @year = y
    @color = c 
    @model = m
    @speed = 0
    @@num_of_vehicles += 1
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
    "My car is a #{year}, #{model}, #{color}}."
  end

  def age
    "Your #{self.model} is #{years_old} years old."
  end

  private

  def years_old
    Time.now.year - self.year.to_i
  end
end

module FourByFour
  def back_wheel_drive(up)
    puts "Four by Four is available"
  end
end

class MyCar < Vehicle
  NUM_OF_DOORS = 4
end

class MyTruck < Vehicle
  include FourByFour
  NUM_OF_DOORS = 2
end

honda = Vehicle.new(2017, 'honda civic', 'white')
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
my_truck = MyTruck.new("2014", "Ford F150", 'Yellow')
puts my_truck
puts Vehicle.num_of_vehicles
truck = MyTruck.new('2014', "Ford F150", "Gold")
puts truck.back_wheel_drive("up")
puts truck
puts truck.age

class Student
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    @grade > other_student.grade
  end

  protected

  def grade
    @grade
  end
end

joe = Student.new('Joe', 93)
bob = Student.new('Bob', 78)

puts "Well done!" if joe.better_grade_than?(bob)