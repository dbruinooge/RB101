# Tic-tac-toe program I made before following LS walkthrough

board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

victory = [
  [[0, 0], [1, 0], [2, 0]],
  [[0, 1], [1, 1], [2, 1]],
  [[0, 2], [1, 2], [2, 2]],
  [[0, 0], [0, 1], [0, 2]],
  [[1, 0], [1, 1], [1, 2]],
  [[2, 0], [2, 1], [2, 2]],
  [[0, 0], [1, 1], [2, 2]],
  [[0, 2], [1, 1], [2, 0]]
]

def display_board(board)
  puts
  puts "Player = O, Computer = X"
  puts
  board.each_with_index do |line, idx|
    puts "#{line[0]}|#{line[1]}|#{line[2]}"
    puts "-----" unless idx == (board.size - 1)
  end
  puts
end

def player_input(board)
  move = ''
  loop do
    puts "Choose a square:"
    move = gets.chomp.to_i
    break if board.any? do |line|
      line.include?(move)
    end
    puts "Invalid input."
  end
  move
end

def player_turn(board)
  move = player_input(board)
  board.map! do |line|
    line.map! do |square|
      if square == move
        'O'
      else
        square
      end
    end
  end
end

def get_blanks(board)
  blanks = []
  board.each do |line|
    line.each do |square|
      blanks << square if square.to_s.to_i == square
    end
  end
  blanks
end

def computer_turn(board)
  moves = get_blanks(board)
  move = moves.sample
  board.map! do |line|
    line.map! do |square|
      if square == move
        'X'
      else
        square
      end
    end
  end
end

def check_winner(brd, victory)
  victory.each do |cond|
    if cond.all? { |sq| brd[sq[0]][sq[1]] == 'O' }
      return 'Player'
    elsif cond.all? { |sq| brd[sq[0]][sq[1]] == 'X' }
      return 'Computer'
    end
  end
  ''
end

def tie?(board)
  empty = []
  board.each do |line|
    line.each do |square|
      empty << square if square.to_s.to_i == square
    end
  end
  return true if empty.empty?
  false
end

def again?
  input = ''
  loop do
    puts "Would you like to play again? y/n"
    input = gets.chomp.downcase
    break if input == 'y' || input == 'n'
    puts "Invalid input."
  end
  case input
  when 'y' then true
  when 'n' then false
  end
end

loop do
  display_board(board)
  player_turn(board)
  if check_winner(board, victory) != ''
    display_board(board)
    puts "#{check_winner(board, victory)} wins!"
    break if again? == false
    board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  elsif tie?(board)
    puts "It's a tie!"
    break if again? == false
    board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  end
  computer_turn(board)
  if check_winner(board, victory) != ''
    display_board(board)
    puts "#{check_winner(board, victory)} wins!"
    break if again? == false
    board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  elsif tie?(board)
    puts "It's a tie!"
    break if again? == false
    board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  end
end

puts "Goodbye!"

# alternative method for checking winner

# def check_winner(brd)
#   idx = 0
#   while idx < brd.size
#     if brd.all? { |line| line[idx] == 'O' }
#       return 'Player'
#     elsif brd.all? { |line| line[idx] == 'X' }
#       return 'Computer'
#     end
#     idx += 1
#   end
#   if brd.any? { |line| line.all? { |sq| sq == 'O' } }
#     'Player'
#   elsif brd.any? { |line| line.all? { |sq| sq == 'X' } }
#     'Computer'
#   elsif [brd[0][0], brd[1][1], brd[2][2]].all?('O')
#     'Player'
#   elsif [brd[0][0], brd[1][1], brd[2][2]].all?('X')
#     'Computer'
#   else
#     ''
#   end
# end
