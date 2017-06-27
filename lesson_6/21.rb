require 'pry'

UP_TO = 21
TWIST_LIMIT = 17

games_won = {'You' => 0, 'Dealer' => 0}

def prompt(msg)
  puts "==> #{msg}"
end

def rand_card(deck)
  deck.map { |k, v| [k] * v[:left_in_deck] }.flatten.sample
end

def twist(deck, hands, who)
  card = rand_card(deck)
  deck[card][:left_in_deck] -= 1
  hands[who] << card
end

def deal(deck, hands, who)
  2.times { twist(deck, hands, who) }
end

def report_hand(who, hands, secretive = true)
  if who == 'You'
    prompt "Your hand: #{hands[who].join(', ')}" if who == 'You'
  elsif secretive
    prompt "The Dealer's hand: #{hands[who][0]} and an unknown card"
  else
    prompt "Dealer's hand: #{hands[who].join(', ')}"
  end
end

def hand_value(deck, hands, who)
  lower = hands[who].map { |x| deck[x][:value] }.reduce(:+)
  number_aces = hands[who].count 'A'
  (0..number_aces).map { |x| lower + (x * 10) }
end

def bust?(deck, hands, who)
  hand_value(deck, hands, who).all? { |x| x > UP_TO }
end

def stick_or_twist
  answer = ''
  loop do
    prompt 'stick or twist? (s / t)'
    answer = gets.chomp.downcase
    break if %w(s t).include? answer
    prompt 'invalid input...try again'
  end
  answer
end

def turn(deck, hands, who, games_won)
  loop do
    if who == 'You' ? stick_or_twist == 't' : total(deck, hands, who) < TWIST_LIMIT
      twist(deck, hands, who)
      report_hand(who, hands, false)
      if bust?(deck, hands, who)
        prompt "#{who} bust!"
        report_winner(deck, hands, hands.keys.reject { |x| x == who }.first, games_won)
        break
      end
    else
      prompt 'Dealer sticks' if who == 'Dealer'
      break
    end
  end
end

def total(deck, hands, who)
  hand_value(deck, hands, who).select { |x| x <= UP_TO }.max
end

def result(deck, hands)
  { 'Dealer' => total(deck, hands, 'Dealer'),
    'You'    => total(deck, hands, 'You') }
end

def report_winner(deck, hands, who, games_won)
  prompt "#{who} #{who == 'You' ? 'win' : 'wins'} with a score of #{result(deck, hands)[who]} "
  games_won[who] += 1
end

def not_bust(deck, hands, who)
  (hand_value(deck, hands, who).first <= UP_TO)
end

def display_overall_score(games_won)
  games_won.keys.each { |x| puts "#{x}: #{games_won[x]}" }
  puts "----------------------------"
end



  loop do
  system 'clear'
  prompt "Let's play #{UP_TO}."
  prompt "First to five wins!"
  prompt "Press Enter to start"
  gets.chomp

  loop do
    system 'clear'
    display_overall_score(games_won)
    deck = { 'A'  => { left_in_deck: 4,  value: 1  },
              2   => { left_in_deck: 4,  value: 2  },
              3   => { left_in_deck: 4,  value: 3  },
              4   => { left_in_deck: 4,  value: 4  },
              5   => { left_in_deck: 4,  value: 5  },
              6   => { left_in_deck: 4,  value: 6  },
              7   => { left_in_deck: 4,  value: 7  },
              8   => { left_in_deck: 4,  value: 8  },
              9   => { left_in_deck: 4,  value: 9  },
              10  => { left_in_deck: 4,  value: 10 },
             'J'  => { left_in_deck: 4,  value: 10 },
             'Q'  => { left_in_deck: 4,  value: 10 },
             'K'  => { left_in_deck: 4,  value: 10 } }

    hands = { 'Dealer' => [], 'You' => [] }

    deal(deck, hands, 'Dealer')
    report_hand('Dealer', hands)

    deal(deck, hands, 'You')
    report_hand('You', hands)

    turn(deck, hands, 'You', games_won)
    turn(deck, hands, 'Dealer', games_won) if not_bust(deck, hands, 'You')
    if not_bust(deck, hands, 'You') && not_bust(deck, hands, 'Dealer')
      if total(deck, hands, 'You') > total(deck, hands, 'Dealer')
        report_winner(deck, hands, 'You', games_won)
      elsif total(deck, hands, 'You') < total(deck, hands, 'Dealer')
        report_winner(deck, hands, 'Dealer', games_won)
      else
        prompt "It's a draw!: both have a score of #{total(deck, hands, 'You')}"
      end
    end
    break if games_won.values.include? 5
    prompt "Press Enter to play the next round"
    gets.chomp
  end

  prompt "#{games_won['You'] == 5 ? 'You win the match!' : 'The Dealer wins the match!'}"
  
  prompt 'Would you like to play again? (y / n)'
  answer = gets.chomp.downcase
  break unless answer == 'y'
end

prompt 'Thanks for playing!'
