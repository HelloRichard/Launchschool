VALID_CHOICES = %w(rock paper scissors)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'paper' && second == 'rock')
end

def display_result(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a void choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  Kernel.puts("You chose: #{choice}; Computer chose: #{computer_choice}")

  # if (choice == 'rock' && computer_choice == 'scissors') ||
  #   (choice == 'scissors' && computer_choice == 'paper') ||
  #   (choice == 'paper' && computer_choice == 'rock')
  #   prompt("You won!")
  # elsif(choice == 'rock' && computer_choice == 'paper') ||
  #   (choice == 'scissors' && computer_choice == 'rock') ||
  #   (choice == 'paper' && computer_choice == 'scissors')
  #   prompt("Computer won!")
  # else
  #   prompt("It's a tie!")
  # end

  display_result(choice, computer_choice)

  prompt("Do you want to play again? if yes, type y")
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?('y')
end
