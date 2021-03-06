# Requirements
# the loan amount
# the annual percentage rate
# the loan durations in years
# Find:
# monthly interest rate
# loan duration in months
require 'yaml'
MESSAGE = YAML.load_file('mortgage_messages.yml')

def prompt(message)
  puts("=> #{message}")
end

def valid_number?(number)
  Float(number) > 0
end

loop do
  prompt(MESSAGE['operator_prompt'])

  loan_amount = ''
  loop do
    loan_amount = gets.chomp.to_f

    if valid_number?(loan_amount)
      break
    else
      prompt(MESSAGE['invalid_msg'])
    end
  end

  prompt("You have entered $#{format('%02.2f', loan_amount)}")

  prompt(MESSAGE['loan_rate'])

  monthly_interest_rate = ''
  loop do
    annual_interest_rate = gets.chomp

    decimal_form = annual_interest_rate.to_f / 100

    monthly_interest_rate = decimal_form / 12

    if valid_number?(monthly_interest_rate)
      break
    else
      prompt(MESSAGE['invalid_msg'])
    end
  end

  prompt("The monthly interest rate is #{format('%02.4f', monthly_interest_rate)}%")

  monthly_loan_duration = ''
  prompt(MESSAGE['loan_duration'])
  loop do
    yearly_loan_duration = gets.chomp

    monthly_loan_duration = yearly_loan_duration.to_i * 12

    if valid_number?(monthly_loan_duration)
      break
    else
      prompt(MESSAGE['invalid_msg'])
    end
  end

  result = loan_amount.to_f * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**-monthly_loan_duration))

  prompt("Your monthly payment is $#{format('%02.2f', result)}")

  interest = (result * monthly_loan_duration) - loan_amount.to_f

  prompt("The total interest you are paying is $#{format('%02.2f', interest)}")

  prompt(MESSAGE["retry_msg"])
  answer = gets.chomp

  break unless answer.downcase().start_with?('y')
end

prompt(MESSAGE['good_bye_msg'])
