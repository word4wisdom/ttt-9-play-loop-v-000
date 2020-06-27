# Helper Methods
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
  end
end

def move(board, index, current_player = "X")
  board[index] = current_player
  end
end

def position_taken?(board, location)
  board[location] != " " && board[location] != ""
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end


def play(board)
  counter = 0 
  while counter < 10 
    turn(board)
    counter += 1 
  end
# build a `#play` method for Tic Tac Toe that initiates a simple loop and calls `#turn
# #play` method will initiate a loop that (runs 9 times), simulating an entire game.
# * Accept an argument of a `board`.
# Start a loop and call `#turn`.
