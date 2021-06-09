INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]] # diagonals


player_wins = 0
computer_wins = 0

current_player = 'Player' 

def prompt(msg)
  puts "=> #{msg}"
end

def joinor(arr, punctuation = ',', conjunction = 'or')
  phrase = ''
  if arr.length == 2
    phrase << "#{arr[0]} #{conjunction} #{arr[1]}"
  else
    arr.each_with_index do |element, idx|
    if idx == (arr.length) - 1
       phrase << "#{conjunction} #{element}"
    else
      phrase << "#{element}#{punctuation} "
    end
  end
  end
  phrase
end

def display_board(brd)
  puts "You're #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
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

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice"
  end
  brd[square] = PLAYER_MARKER
end


def detect_block(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 2
      return brd.select{|k,v| line.include?(k) && v == ' '}.keys.first
    end
  end
  nil
end

def detect_win(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(COMPUTER_MARKER) == 2
      return brd.select{|k,v| line.include?(k) && v == ' '}.keys.first
    end
  end
  nil
end

def computer_places_piece!(brd)
  if detect_win(brd)
    square = detect_win(brd)
  elsif detect_block(brd)
    square = detect_block(brd)
  elsif empty_squares(brd).include?(5)
    square = 5
  else
    square = empty_squares(brd).sample
  end
    brd[square] = COMPUTER_MARKER
end

def place_piece!(brd, crnt_plyr)
  if crnt_plyr == 'Player'
    player_places_piece!(brd)
  elsif crnt_plyr == 'Computer'
    computer_places_piece!(brd)  
  end 
end

def alternate_player(crnt_plyr)
  if crnt_plyr == 'Player'
    crnt_plyr = 'Computer'
  elsif crnt_plyr == 'Computer'
    crnt_plyr = 'Player' 
  end 
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end


# main game loop starts here
loop do
  board = initialize_board
  
 loop do
  display_board(board)
  place_piece!(board, current_player)
  current_player = alternate_player(current_player)
  break if someone_won?(board) || board_full?(board)
end
  
  display_board(board)
  
  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
    if detect_winner(board) == 'Player'
      player_wins += 1
    elsif detect_winner(board) == 'Computer'
      computer_wins +=1
    end
  else
    prompt "It's a tie!"
  end

  prompt "Player has #{player_wins}. Computer has #{computer_wins}."
  
  if player_wins == 5 
    prompt "Player has won the game."
    break
  elsif computer_wins == 5
    prompt prompt "Computer has won the game."
    break
  else
    prompt "Play again?(y or n)"
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
  end
end

prompt "Thanks for playing Tic Tac Toe! Good bye!"
