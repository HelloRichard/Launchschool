
require 'yaml'
MESSAGES = YAML.load_file('rps_messages.yml')
GAME_CHOICE = %w(rock paper scissors lizard spock)
OPTIONAL_CHOICE = { "rock" => "rock",
                    "paper" => "paper",
                    "scissors" => "scissors",
                    "lizard" => "lizard",
                    "spock" => "spock" }

QUICK_LABEL = { "r" => "rock",
                "p" => "paper",
                "s" => "scissors",
                "l" => "lizard",
                "v" => "spock" }

RULES = { "rock" => %w(scissors lizard),
          "paper" => %w(rock spock),
          "scissors" => %w(paper lizard),
          "lizard" => %w(spock paper),
          "spock" => %w(rock scissors) }

def prompt(message)
  puts "=> #{message}"
end

# def win?(win, lose) used a hash method instead
#   (win == 'rock' && (lose == 'scissors' || lose == 'lizard')) ||
#     (win == 'paper' && (lose == 'rock' || lose == 'spock')) ||
#     (win == 'scissors' && (lose == 'paper' || lose == 'lizard')) ||
#     (win == "lizard" && (lose == 'paper' || lose == 'spock')) ||
#     (win == "spock" && (lose == 'rock' || lose == 'scissors'))
# end

def win?(key, value)
  RULES[key].include?(value)
end

def display_result(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("You lose!")
  else
    prompt("It's a draw!")
  end
end

prompt(MESSAGES['welcome'])
puts(MESSAGES['line'])
puts(MESSAGES['rules'])

loop do
  user_points = 0
  computer_points = 0

  loop do
    puts(MESSAGES['line'])
    prompt("Choose your weapon wisely: #{GAME_CHOICE.join(', ')}")
    prompt(MESSAGES['ref'])

    player1 = ''
    loop do
      player1 = gets().chomp().downcase()

      if QUICK_LABEL.include?(player1) || OPTIONAL_CHOICE.include?(player1)
        break
      else
        prompt(MESSAGES['invalid_input'])
      end
    end

    computer_choice = GAME_CHOICE.sample

    user = QUICK_LABEL[player1] || OPTIONAL_CHOICE[player1]

    prompt("You chose: #{user}; Computer chose: #{computer_choice}")

    display_result(user, computer_choice)

    if win?(user, computer_choice)
      user_points += 1
    elsif win?(computer_choice, user)
      computer_points += 1
    end

    prompt("User: #{user_points} point(s);\
      Computer: #{computer_points} point(s)")

    if user_points == 5
      prompt(MESSAGES['congratulation'])
    elsif computer_points == 5
      prompt(MESSAGES['lose_msg'])
    end

    break if user_points == 5 || computer_points == 5
  end

  prompt(MESSAGES['replay'])

  answer = ''
  loop do
    answer = gets().chomp().downcase()
    if answer.start_with?('y', 'n')
      break
    else
      prompt(MESSAGES['invalid_input'])
    end
  end

  break unless answer.start_with?('y')
end

prompt(MESSAGES['end_reply'])
