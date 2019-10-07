def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def input_to_index(user_input)
  index = user_input.to_i - 1
end

def valid_move?(board, index)
 if !position_taken?(board,index) && index >= 0 && index <= 8 then #if the position is not take aka position_taken? returns false  then the move is valid
  return true
 else
  return false
 end
end

def position_taken?(board, index) #  method position taken accepts the current board and checks the position the player would like to go is empty
  if (board[index] == " ") || (board[index] == "") || (board[index] == nil) # if either a blank space, no space or nil entry is present then the board[index] aka position the player wants to go is empty
       return false # this means the board [index] does not have a value so the player is free to move here
     else
        return true # this means the board[index] has a value - nothing has yet been put in place to make sure the value is only X or O
  end
end

def move(board, index, player = "X")
  board[index] = player
end

def turn (board)

  puts "Please enter 1-9:"
  user_input=gets.strip
  index_2 = input_to_index(user_input)
  player_move = valid_move?(board, index_2)

# if player_move == false then
  # until player_move == true
  #   puts "Please enter 1-9:"
  #   new_input=gets.strip
  # end
 #ßend

end

#turn(board)
