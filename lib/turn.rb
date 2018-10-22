#display board accepts input

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
#converts user input to index number
def input_to_index(input)
  index = input.to_i - 1
end

def move(array, index, player = "X")
  array[index] = player
end

#checks if valid move
def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0,8)
    return true
  else
    return false
  end
end

#checks if position already taken
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] ==  nil
    return false
    elsif board[index] == "X" || "O"
    return true
  end
end

