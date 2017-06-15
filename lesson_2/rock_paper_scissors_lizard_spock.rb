VALID_CHOICES = %w(rock paper scissors spock lizard)
ABBREV_CHOICES = %w(r p sc sp l)
RESULTS_ARRAY = [0, 1, 3].map { |x| VALID_CHOICES.rotate(x) }
score = []

def display_results(player, computer, score)
  computer_position = RESULTS_ARRAY[0].index(computer)
  if RESULTS_ARRAY[1, 2].transpose[computer_position].include? player
    prompt "You won!"
    display_score('player', score)
  elsif player == computer
    prompt "It's a draw!"
    display_score('draw', score)
  else
    prompt "You lost!"
    display_score('computer', score)
  end
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def display_score(winner, score)
  score << winner
  prompt <<~HEREDOC
            The score is:  Computer: #{score.count 'computer'} 
                              Player:   #{score.count 'player'}
            HEREDOC
  if score.count('player') == 5
    prompt "You are the grand champion!"
    score.clear
  elsif score.count('computer') == 5
    prompt "The computer is the grand champion!"
    score.clear
  end
end

prompt("Let's play #{VALID_CHOICES.join(' ')}!")
puts("   The first to win five games is the grand champion!")

loop do
  loop do
    choice = ''
    loop do
      prompt("Choose one: #{VALID_CHOICES.join(', ')}")
      puts("   (you can enter either #{ABBREV_CHOICES[0, 4].join(', ')} or l)")
      choice = Kernel.gets().chomp()
      abbrev = ABBREV_CHOICES.include? choice
      choice = VALID_CHOICES[ABBREV_CHOICES.index(choice)] if abbrev
      break if VALID_CHOICES.include? choice
      prompt "That's not a valid choice"
    end
    computer_choice = VALID_CHOICES.sample
    Kernel.puts("You chose #{choice}. Computer chose #{computer_choice}.")
    display_results(choice, computer_choice, score)
    break if score == []
  end
  prompt "Do you want to play again? (y/n)"
  answer = Kernel.gets.chomp()
  break unless answer == 'y'
end

prompt "Thanks for playing!"
