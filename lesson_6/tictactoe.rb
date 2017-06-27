require 'pry'

FIRST_MOVER = 'choose'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]] # diagonals
INITIAL_MARKER = ' '.freeze
PLAYER_MARKER = 'X'.freeze
COMPUTER_MARKER = 'O'.freeze


def prompt(msg)
  puts "==> #{msg}"
end

def joinor(arr)
  return "#{arr[0..-2].join(', ')} or #{arr[-1]}" if arr.size > 1 
  arr[0]
end

# rubocop:disable Metrics/MethodLength
# rubocop:disable Metrics/AbcSize

def display_board(brd)
  system 'clear'
  puts "You are #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
  puts ''
  puts '     |     |'
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts '     |     |'
  puts '-----+-----+-----'
  puts '     |     |'
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts '     |     |'
  puts '-----+-----+-----'
  puts '     |     |'
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts '     |     |'
end
# rubocop:enable Metrics/MethodLength
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  # binding.pry
  brd.keys.select { |x| brd[x] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  return if game_over(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor (empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include? square
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def immediate_threat(brd)
  WINNING_LINES.map { |line| brd.values_at(*line)}.map { |line| line.sort == ["X", "X", " "].sort}.index true
end

def winning_move(brd)
  WINNING_LINES.map { |line| brd.values_at(*line)}.map { |line| line.sort == ["O", "O", " "].sort}.index true
end

def computer_places_piece!(brd)
  return if game_over(brd)
  if winning_move(brd)
    square = WINNING_LINES[winning_move(brd)].select { |x| empty_squares(brd).include? x }.first    
  elsif immediate_threat(brd)
    square = WINNING_LINES[immediate_threat(brd)].select { |x| empty_squares(brd).include? x }.first
  elsif empty_squares(brd).include? 5
    square = 5
  else  
    square = empty_squares(brd).sample
   # binding.pry
  end
  brd[square] = COMPUTER_MARKER
end

PLAYERS = [method(:player_places_piece!), method(:computer_places_piece!)]

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    return 'You'   if brd.values_at(*line).count(PLAYER_MARKER) == 3
    return 'The computer' if brd.values_at(*line).count(COMPUTER_MARKER) == 3
  end
  nil
end

def game_over(brd)
  someone_won?(brd) || board_full?(brd)
end

def display_results(player_wins, comp_wins)
  prompt "Your score is: #{player_wins}"
  prompt "The computer's score is: #{comp_wins}"
  if player_wins == 5
    prompt "You are first to five!"
  elsif comp_wins == 5
    prompt "The computer is first to five!"
  else
    prompt "Press enter to play again"
    gets.chomp
    gameplay(player_wins, comp_wins, first_go)
  end  
end

def first_go
  if FIRST_MOVER.downcase == 'choose' 
    answer = ''
    loop do
      prompt "Would you like to go first or second? (press 1 or 2)" 
      answer = gets.chomp
      break if ['1', '2'].include? answer
      prompt "Please enter 1 or 2"
    end
  end
  (answer == '2'  || FIRST_MOVER.downcase == 'computer') ? 'computer' : 'player'
end

def gameplay(player_wins = 0, comp_wins = 0, starter)
  starter == 'player' ? players = PLAYERS : players = PLAYERS.reverse
  board = initialize_board
  display_board(board)
  until game_over(board)
    players.each do |x| 
      x.call board
   #   binding.pry
      display_board(board)
    end
  end
  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end
  player_wins += 1 if detect_winner(board) == 'You'
  comp_wins += 1 if detect_winner(board) == 'The computer'
  display_results(player_wins, comp_wins)
end

loop do
  gameplay(0, 0, first_go)
  prompt 'Would you like to play again? (y or n)'
  answer = gets.chomp
  break unless answer.start_with?('y')
end

prompt 'Thanks for playing tic tac toe! Goodbye.'


    

