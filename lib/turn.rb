def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end

def position_taken?(board, index)
    if (board[index] == " ") || (board[index] == "") || (board[index] == nil)
      return false
    else
      return true   #board[index] is not " " or "" or nil because there's an "X" or "O"
    end
  end

def valid_move?(board, index)
     if index.between?(0,8) && !position_taken?(board, index)
       return true
     end
   end

def input_to_index(user_input)
     user_input.to_i - 1
   end

def move(board, index, player)
     board[index] = player
   end

   def turn_count(board)
     counter = 0
     board.each do |spaces|
       if spaces == "X" || spaces == "O"
         counter += 1
       end
     end
     counter
   end

def current_player(board)
  turn_count(board) % 2 == 0 ? "X" : "O"
end

def turn(board)
  puts "Please enter 1-9:"
  
  index = input_to_index(user_input)
  if valid_move?(board, index)
     move(board, index, current_player(board))
     turn(board)
   end
  display_board(board)
end
