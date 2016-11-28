# modules are a collection of behaviors that is useable in other classes
module Speak
  def speak(sound)
    puts "#{sound}"
  end
end

class GoodDog
  include Speak
end

class HumanBeing
  include Speak
end

Sparky = GoodDog.new
Sparky.speak("Woof")

Bob = HumanBeing.new
Bob.speak("Hello")

# Method lookup
puts "---GoodDog ancestors---"
puts GoodDog.ancestors
puts " "
puts "---HumanBeing ancestors---"
puts HumanBeing.ancestors

# grouping class with a module
module Study
end

module Outer
  class MyClass
    include Study
  end
end

sparky = Outer::MyClass.new

puts Outer::MyClass.ancestors

