#conditional flow notes
# puts "Put in a number"
# a = gets.chomp.to_i

# if a == 3
#   puts "a is 3"
# elsif a == 4
#   puts "a is 4"
# else 
#   puts "a is neither 3, nor 4"
# end

# if a == 3 then puts "a is 3" end

# puts "a is 3" if a == 3

# puts "a is NOT 3" unless a == 3

#!= not equal to and ! is the opposite boolean
#Teranary operator are ? and : 
# if the boolean is true before ? then the left of : is executed
# but if the boolena is false before ? then the right of : is executed

# case statement involves: case, when, else, and end
# a = 5

# answer = case a
# when 5
#   puts "a is 5"
# when 6
#   puts "a is 6"
# else 
#   puts "a is neither 5, nor 6"
# end

# puts answer

# Conditional exercise 2
# def check(words)
#   if words.length > 10 
#     words.upcase
#   else
#     words
#   end
# end

# puts check("Hello there, Bobby")
# puts check("Hello!")

#3
puts "Enter a number from 0 to 100"
number = gets.chomp.to_i

  # if (number < 0 )
  #   puts "number can't be a negative number"
  # elsif (number >= 0 && number <= 50)
  #   puts "number is between 0 and 50"
  # elsif (number >= 51 && number <= 100)
  #   puts "number is between 51 and 100"
  # else
  #   puts "above 100"
  # end

#5
def evaluate(number)
  case
  when (number < 0 )
    puts "number can't be a negative number"
  when (number >= 0 && number <= 50)
    puts "number is between 0 and 50"
  when (number >= 51 && number <= 100)
    puts "number is between 51 and 100"
  else
    puts "above 100"
  end
end

def evaluate_2(number)
  case number
  when 0..50
    puts "number is between 0 and 50"
  when 51..100
    puts "number is between 51 and 100"
  else
    if number < 0
      puts "number can't be a negative number"
    else
      puts "above 100"
    end
  end
end

evaluate(number)
evaluate_2(number)
    
