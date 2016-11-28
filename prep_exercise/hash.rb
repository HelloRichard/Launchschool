# Notes for hash
# hash is a data structure that stores items by associated keys
# hash = {name: 'bob'}
# to add a hash, hash[:hair] = 'brown'
# to remove an item from hash, hash.delete(:hair)
# to retrieve a info from a hash, hash[:weight]
# if you want to merge two hash, person.merge!(new_hash)

# iterating with hashes
person = {name: 'bob', height: '6ft', weight: '160 lbs', hair: 'brown'}

person.each do |key, value|
  puts "Bob's #{key} is #{value}"
end

# optional parameters

def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name} and I'm #{options[:age]}" +
    " years old and I live in #{options[:city]}."
  end
end

greeting('Bob')
greeting('Bob', {age: 62, city: "New York City"})
# another way to write it out
greeting('Bob', age: 62, city: 'New York City')

# has_key looking for a specific key in hash
# select method allows you to pass a block and will return any key-value pairs that is true
# fetech method allows you to pass a given key and it will return the value for that key
# to_a changes to an array
# if you want to find the keys and values use .keys and .values

#Hash Exercise 1
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

immediate_family = family.select do |k, v|
  k == :sisters || k == :brothers
end

arr = immediate_family.values.flatten #flatten makes it into one array (no nested array)

p arr

# Exercise 2
cat = {name: 'Whiskers'}
weight = {weight: '10 lbs'}

puts cat.merge(weight) # only temperary
puts cat
puts weight
puts cat.merge!(weight) # merge! is permanent
puts cat
puts weight

# Exercise 3
pets = {dog: 'Barky', cat: 'meow', fish: 'flipper', penguin: 'happy', lizard: 'geico'}

pets.each do |k, v|
  puts k
  puts v
end

opposites = {positive: "negative", up: "down", right: "left"}

opposites.each_key { |key| puts key }
opposites.each_value { |value| puts value }
opposites.each { |key, value| puts "The opposite of #{key} is #{value}" }

# Exercise 4 access the name of the person
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
person[:name]

# Exercise 5 find out if a Hash contains a specific value in it
# Use has_value?() or has_key?(:key)

# Exercise 6
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

# brainstorming
# 1. iterate over the words array, and for each word:
# 2. turn it in alphabetical order. eg. mode => demo
# 3. if the key exists, add it to the key's list
# 4. else create a new key, with this word in the lsit

result = {}

words.each do |word| #1 iterate over the words array
  key = word.split('').sort.join #2 turn it in alphabetical order and set it to a variable 'key'
  if result.has_key?(key) #3 if the key exists
    result[key].push(word) # add the word to the variable 'key'
  else
    result[key] = [word] #4 add the word to a new variable 'key'
  end
end

result.each do |k, v|
  puts "-------"
  puts v
end
# Exercise 7
# x = "hi there"
# my_hash = {x: "some value"} #created with a symbol x as the key
# my_hash2 = {x => "some value"} #created with a string value of x as the key


