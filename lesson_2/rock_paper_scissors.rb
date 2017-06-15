VALID_CHOICES = %w(rock paper scissors)

def display_results(player, computer)
  if computer == VALID_CHOICES[(VALID_CHOICES.index(player) - 1)]
    prompt "You won!"
  elsif player == computer
    prompt "It's a draw!"
  else
    prompt "You lost!"
  end
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()
    break if VALID_CHOICES.include? choice
    prompt "That's not a valid choice"
  end
  computer_choice = VALID_CHOICES.sample
  Kernel.puts("You chose #{choice}. Computer chose #{computer_choice}.")
  display_results(choice, computer_choice)
  prompt "Do you want to play again? (y/n)"
  answer = Kernel.gets.chomp()
  break unless answer == 'y'
end
prompt "Thanks for playing!"
