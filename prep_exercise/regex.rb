# Math.sqrt(400)
# Math::PI
# t = Time.new(2008, 7, 4) to calculate a specific time or day (year, month, day)

def has_a_b?(string)
  if /b/.match(string) # =~ with /char/ you are looking for or .match is regex
    puts "We have a match!"
  else
    puts "No match here."
  end
end

has_a_b?("basketball")
has_a_b?("football")
has_a_b?("hockey")
has_a_b?("golf")

#Block
def take_block(number, &block)
  block.call(number) 
end 

number = 42

take_block(number) do |num| 
  puts "Block being called in the method! #{num}"
end

#Proc
talk = Proc.new do |name|
  puts "I am talking to #{name}"
end

talk.call "Bob"

def take_proc(proc)
  [1, 2, 3, 4, 5].each do |number|
    proc.call number
  end
end

proc = Proc.new do |number|
  puts "#{number}. Proc being called in the method!"
end

take_proc(proc)

#Execption Handling
names = ['bob', 'joe', 'steve', nil, 'frank']

names.each do |name|
  begin
    puts "#{name}'s name has #{name.length} letters in it."
  rescue
    puts "Something went wrong!"
  end
end

zero = 0 
puts "before each call"
zero.each { |element| puts element} rescue puts "Can't run"
puts "After each call"

def divide(num, divisor)
  begin
    answer = num/divisor
  rescue ZeroDivisionError => e 
    puts e.message
  end
end

puts divide(16, 4)
puts divide(4, 0)
puts divide(14, 7)

# Exercise 1
def check_in(word)
  if /lab/i =~ word #i means case insensitive
    puts word
  else
    puts "No match"
  end
end  

check_in("laboratory")
check_in("experiment")
check_in("Pans Labyrinth")
check_in("elaborate")
check_in("polar bear")    