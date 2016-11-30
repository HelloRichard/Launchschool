
require 'yaml'
MESSAGES = YAML.load_file('rps_messages.yml')

GAME_CHOICE = %w(rock paper scissors lizard spock)
QUICK_LABEL = %w(r p s l v)

puts(QUICK_LABEL)

def prompt(message)
  puts "=> #{message}"
end

def win?(win, lose)
  (win == 'rock' && (lose == 'scissors' || lose == 'lizard')) ||
    (win == 'paper' && (lose == 'rock' || lose == 'spock')) ||
    (win == 'scissors' && (lose == 'paper' || lose == 'lizard')) ||
    (win == "lizard" && (lose == 'paper' || lose == 'spock')) ||
    (win == "spock" && (lose == 'rock' || lose == 'scissors'))
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

def conversion_ref(ref)
  case ref
  when 'r'
    'rock'
  when 'p'
    'paper'
  when 's'
    'scissors'
  when 'l'
    'lizard'
  when 'v'
    'spock'
  end
end

prompt(MESSAGES['welcome'])
puts(MESSAGES['line'])
puts(MESSAGES['rules'])

loop do
  user_points = 0
  comp_points = 0

  loop do
    puts(MESSAGES['line'])
    prompt("Choose your weapon wisely: #{GAME_CHOICE.join(', ')}")
    prompt(MESSAGES['ref'])

    player1 = ''
    loop do
      player1 = gets().chomp()

      if QUICK_LABEL.include?(player1) || GAME_CHOICE.include?(player1)
        break
      else
        prompt(MESSAGES['invalid_input'])
      end
    end

    computer_choice = GAME_CHOICE.sample

    user = conversion_ref(player1)

    prompt("You chose: #{user}; Computer chose: #{computer_choice}")

    display_result(user, computer_choice)

    if win?(user, computer_choice)
      user_points += 1
    elsif win?(computer_choice, user)
      comp_points += 1
    end

    prompt("User: #{user_points} point(s); Computer: #{comp_points} point(s)")

    if user_points == 5
      prompt(MESSAGES['congratulation'])
    elsif comp_points == 5
      prompt(MESSAGES['lose_msg'])
    end

    break if user_points == 5 || comp_points == 5
  end

  prompt(MESSAGES['replay'])
  answer = gets().chomp()
  break unless answer.downcase.start_with?('y')
end

prompt(MESSAGES['end_reply'])
