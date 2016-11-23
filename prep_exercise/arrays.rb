# array methods: delete, pop, push, delete_at(), map/collect {|num|, num**2}, uniq, unshift(), sort
# iterate: .select {|num| num > 4}, other methods are include?(), flatten, each_index/each_with_index
# Other useful methods: product

#Exercise 1
# arr = [1, 3, 5, 7, 9, 11]
# number = 3

# if arr.include?(number)
#   puts "#{number} is in the array"
# end

# # Or
# arr.each do |num|
#   if num == number
#     puts "#{number} is in the array"
#   end
# end

#3 output example
# arr = [["test", "hello", "world"],["example", "mem"]]
# arr.last.first

#6 
# names = ['bob', 'joe', 'susan', 'margaret']
# names[3] = 'jody'

array = [1, 2, 3, 4, 5]

new_array = array.map {|plus_two| plus_two+2}
puts "#{new_array}"
puts "#{array}"

