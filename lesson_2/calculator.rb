# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result
# () shows that it is a method
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  puts("=> #{message}")
end

def valid_number?(num)
  Float(num) rescue false
end

def operation_to_message(op)
  case op
  when '1'
    "Adding"
  when '2'
    "Subtracting"
  when '3'
    "Multiplying"
  when '4'
    "Dividing"
  end
end
      

prompt(MESSAGES['welcome'])

name = ''
loop do 
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt("Hello #{name}")

number1 = '' # need to localize the variable since this variable is a block
loop do # main loop
  loop do # this is a block of code
    prompt(MESSAGES["first_number"])
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt(MESSAGES["invalid_number_msg"])
    end
  end

  number2 = ''
  loop do
    prompt(MESSAGES["second_number"])
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt(MESSAGES["invalid_number_msg"])
    end
  end

  # operator_prompt = <<-MSG
  #   What operation would you like to perform?
  #   1) add
  #   2) substract
  #   3) multiply
  #   4) divide
  # MSG

  prompt(MESSAGES['operator_prompt'])

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['invalid_option_msg'])
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")


  # if operator == '1'
  #   result = number1.to_i + number2.to_i
  # elsif operator == '2'
  #   result = number1.to_i - number2.to_i
  # elsif operator == '3'
  #   result = number1.to_i * number2.to_i
  # else
  #   result = number1.to_f / number2.to_f
  # end 

  result = case operator
           when '1'
             number1.to_f() + number2.to_f()
           when '2'
             number1.to_f() - number2.to_f()
           when '3'
             number1.to_f() * number2.to_f()
           when '4'
             number1.to_f() / number2.to_f()
  end
    
  prompt("The result is #{result}")

  prompt(MESSAGES['retry_msg'])
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(MESSAGES['good_bye_msg'])

