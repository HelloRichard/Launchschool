# Exercise 1
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# arr.each do |n|
#   puts n
# end

# Exercise 2 only print values greater than 5

# arr.each do |n|
#   if n > 5
#     puts n
#   end
# end

# better syntax
# arr.each do |n|
# puts n if n > 5

# Exercise 3 use select to get the odd numbers
# odd_arr = arr.select do |n|
#   n % 2 != 0 # use n.odd?
# end

# odd_arr2 = arr.select {|n| n.odd? ? true : false}

# p odd_arr
# p odd_arr2

# Exercise 4 Append "11" to the end and "0" to the beginning
# use arr.push(11) to add to the end
# use arr.unshift(0) to add to the beginning

# Exercise 5 remove 11 and add 3
# use arr.pop to remove from end of array
# use arr.push(3) to add it to the end

# Exercise 6 remove any duplicates
# arr.uniq

# Exercise 7 difference between array and hash
# hash contains a key value pair for referencing by key

# Exercise 8 create a hash using both ruby syntax styles
# hash = {name: 'bob'}

# Exercise 9
# h = {a:1, b:2, c:3, d:4}
# Get the value of key ":b"
# h[:b]
# Add to this hash key:value '{e:5}'
# h[:e] = 5
# Remove all key:value pairs whose value is less than 3.5
# h.delete_if do |k, v| # or h.delete_if {|k, v| v < 3.5}
#   v < 3.5
# end

# puts h

# Exercise 10 Can hash values be arrays? Can array be hashes?
# hash = {names: ['bob', 'joe', 'susan']}
# arr = [{name: 'bob'}, {name: 'joes'}, {name: 'susan'}]

# Exercise 12 add the array to the empty hash
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# contacts['Joe Smith'][:email] = contact_data[0][0]
# contacts['Joe Smith'][:address] = contact_data[0][1]
# contacts['Joe Smith'][:phone] = contact_data[0][2]

# contacts['Sally Johnson'][:email] = contact_data[1][0]
# contacts['Sally Johnson'][:address] = contact_data[1][1]
# contacts['Sally Johnson'][:phone] = contact_data[1][2]

# puts contacts

# Exercise 13 out put Joe's email and Sally's phone #
# puts "Joe's email is: #{contacts["Joe Smith"][:email]}"
# puts "Sally's phone number is: #{contacts["Sally Johnson"][:phone]}"

# Exercise 14
# fields = [:email, :address, :phone]

# contacts.each_with_index do |(name, hash), index|
#   fields.each do |field|
#     hash[field] = contact_data[index].shift
#   end
# end

# puts contacts

# Exercise 15 use delete_if and start_with? to delete all the words that start with a "s" or "w"
# arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

# arr.delete_if {|word| word.start_with?('s')}
# arr.delete_if {|word| word.start_with?('s', 'w')}

# puts arr

# Exercise 16
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

a.map!{|pairs| pairs.split}.flatten! #map allows iteration
p a

