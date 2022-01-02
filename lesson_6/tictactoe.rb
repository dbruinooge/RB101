require 'pry-byebug'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]]              # diagnals

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

score = { 'Player' => 0, 'Computer' => 0 }

def prompt(msg)
  puts "=> #{msg}"
end

def joinor(numbers, separator = ', ', conjunction = 'or')
  return '' if numbers.empty?
  return numbers[0] if numbers.size == 1
  return "#{numbers[0]} #{conjunction} #{numbers[1]}" if numbers.size == 2
  # if more than 2 elements
  joined_string = numbers.join(separator)
  joined_string.insert(-2, conjunction + ' ')
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You are #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def first_move
  choice = ''
  loop do
    prompt "Who should go first? 1) Player 2) Computer 3) Let Computer decide"
    choice = gets.chomp.to_i
    break if [1, 2, 3].include?(choice)
    prompt "Invalid input."
  end
  choice = [1, 2].sample if choice == 3
  if choice == 1
    'Player'
  else
    'Computer'
  end
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))})"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  move = computer_attacks(brd)
  move = computer_defends(brd) if !move
  move = 5 if brd[5] == INITIAL_MARKER
  move = empty_squares(brd).sample if !move
  brd[move] = COMPUTER_MARKER
end

def computer_attacks(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(COMPUTER_MARKER) == 2 &&
      brd.values_at(*line).count(INITIAL_MARKER) == 1
      line.each { |sq| return sq if brd[sq] == INITIAL_MARKER }
    end
  end
  nil 
end

def computer_defends(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 2 &&
      brd.values_at(*line).count(INITIAL_MARKER) == 1
      line.each { |sq| return sq if brd[sq] == INITIAL_MARKER }
    end
  end
  nil 
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    return 'Player' if line.all? { |sq| brd[sq] == PLAYER_MARKER }
                  # if brd.values_at(*line).count(PLAYER_MARKER) == 3
    return 'Computer' if line.all? { |sq| brd[sq] == COMPUTER_MARKER }
                    # if brd.values_at(*line).count(COMPUTER_MARKER) == 3
  end
  nil
end

def place_piece!(board, current_player)
  if current_player == 'Player'
    player_places_piece!(board)
  else
    computer_places_piece!(board)
  end
end

def alternate_player(current_player)
  if current_player == 'Player'
    current_player = 'Computer'
  else
    current_player = 'Player'
  end
end

loop do
  board = initialize_board
  current_player = first_move

  loop do
    display_board(board)
    place_piece!(board, current_player)
    current_player = alternate_player(current_player)

    break if someone_won?(board) || board_full?(board)
  end
  
  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
    score[detect_winner(board)] += 1
  else
    prompt "It's a tie!"
  end
  
  if score['Player'] == 5 || score['Computer'] == 5
    prompt "#{score.key(5)} wins the match!"
    prompt "Final score: Player #{score['Player']}, Computer #{score['Computer']}"
    prompt "Play another best-of-five match? (y or n)"
    answer = gets.chomp
    if answer.start_with?('y')
      score = { 'Player' => 0, 'Computer' => 0 }
      next
    end
    break
  end
  
  prompt "Current score: Player #{score['Player']}, Computer #{score['Computer']}"
  prompt "Play again?"
  decision = gets.chomp
  break if !decision.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe! Goodbye!"
