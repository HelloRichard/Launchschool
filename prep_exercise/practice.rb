# brainstorming
# 1. iterate over the words array, and for each word:
# 2. turn it in alphabetical order. eg. mode => demo
# 3. if the key exists, add it to the key's list
# 4. else create a new key, with this word in the lsit

class Vehicle 
  def initialize(name, model, year, color) 
    @name = name
    @model = model
    @year = year
    @color = color
    @speed = 0
  end

  def speed_up(num)
    @speed += num
    puts "You are speeding up by #{num}"
  end

  def speed_down(num)
    @speed -= num
    puts "You are speeding down by #{num}"
  end

  def current_speed
    puts "You are going #{@speed} mph"
  end

  def shut_down
    if @speed == 0
      puts "You are shutting down and going 0 mph"
    else
      puts "Please make sure your speed is at 0!"
    end
  end
end

my_car = Vehicle.new("honda", "civic", 2007, "yellow")
my_car.speed_up(12)
my_car.speed_up(13)
my_car.speed_down(5)
my_car.speed_up(50)
my_car.current_speed
my_car.shut_down
my_car.speed_down(70)
my_car.shut_down



    

