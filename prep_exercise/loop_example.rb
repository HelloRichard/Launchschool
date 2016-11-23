#Notes on loops: while loops, do loops, for loops

#do loop
# i = 0
# loop do
#   i += 2
#   if i == 4
#     next
#   end
#   puts i 
#   if i == 10
#     break
#   end
# end

#while loop evaluates true or false
# x = gets.chomp.to_i 

# while x >= 0 # can use a until loop eg. until x < 0
#   puts x
#   x -= 1
# end

# puts "Done!"

#do/while loop

# loop do 
#   puts "Do you want to do that again?"
#   answer = gets.chomp
#   if answer != 'Y'
#     break
#   end
# end

# Another way to do it, but not recommended
# begin
#   puts "DO you want to do that again?"
#   answer = gets.chomp
# end while answer == 'Y'

# For loop
# x = [1, 2, 3, 4, 5]

# for i in x do
#   puts i
# end

# puts "Done!"
# x = 0 

# while x <= 10 
#   if x == 3
#     x += 1
#     next
#   elsif x.odd? 
#     puts x 
#   end 
#     x +=1
# end

# Iterators 
# names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']
# # names.each {|name| puts name}

# x = 1

# names.each do |name|
#   puts "#{x}. #{name}"
#   x += 1
# end

# Recursion 
# def doubler(start)
#   puts start
#   if start < 10 
#     doubler(start*2)
#   end
# end

#fibonacci.rb
# def fibonacci(number)
#   if number < 2 
#     number
#   else
#     fibonacci(number - 1) + fibonacci(number - 2)
#   end
# end

# puts fibonacci(6)

#Exercise 2
# x = ""
# while x != "STOP" do 
#   puts "Hi, How are you feeling?"
#   ans = gets.chomp
#   puts "Want me to ask you again? If no, Type STOP"
#   x = gets.chomp
# end

#Exercise 3
# pets = ['dogs', 'cats', 'fish', 'pig', 'cow', 'horse']

# pets.each_with_index do |pet, index|
#   puts "#{index + 1}. #{pet}"
# end

#Exercise 4

def counter(x)
  if x <= 0 
    puts x
  else
    puts x 
    counter(x-1)
  end
end

counter(10)