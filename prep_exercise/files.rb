# to create a new file: new_file = File.new("file.rb", "w+")
# r: read only
# w: write-only
# w+: read and write
# a+: read-write

# File.read("file_name") reads the file
# File.readlines("file_name") reads the entire file based on individual lines and returns those lines in an array
# File.open("file_name", "w") opens the file
# {|file| file.write("adding first line of text")} adding a new line of text
# to close a file: type variable name.close

# File.open("file_name", "a+") do |file|
#   file.write "comment"
# end

# File.readlines("file_name").each_with_index do |line, line_num|
#   puts "#{line_num}: #{line}"
# end

#File.open(original, "a") do |file|
# file.puts simple
#end this combines the files simple and original 

