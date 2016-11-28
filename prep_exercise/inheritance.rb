#inheritance vs modules
#use inheritance if "is a" eg. dog "is an" animal
#use modules if "has a" eg. dog "has the" ability to swim

# module Swimmable
#   def swim
#     "I'm swimming"
#   end
# end

# class Animal;
# end

# class Fish < Animal
#   include Swimmable 
# end 

# class Mamman < Animal
# end

# class Cat < Mammal 
# end

# class Dog < Mammal
#   include Swimable
# end

module Walkable
  def walk
    "I'm walking."
  end
end

module Swimmable
  def swim
    "I'm swimming."
  end
end

module Climbable
  def climb
    "I'm climbing"
  end
end

class Animal
  include Walkable

  def speak
    "I'm an animal, and I speak!"
  end
end

class GoodDog < Animal
  include Swimmable
  include Climbable
end

puts "----Animal method lookup----"
puts Animal.ancestors
puts "---GoodDog method lookup---"
puts GoodDog.ancestors

module Mammal 
  class Dog
    def speak(sound)
      p "#{sound}"
    end
  end

  class Cat
    def say_name(name)
      p "#{name}"
    end
  end
end

buddy = Mammal::Dog.new
kitty = Mammal::Cat.new

buddy.speak('woof!')
kitty.say_name('Paws')