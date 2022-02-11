#!/Users/johnhennerich/.rbenv/shims/ruby
#!/usr/bin/ruby
require 'pry'
require 'set'
require 'matrix'
require './lib/board'
require './lib/turn'
require './lib/user_interface'

board =Board.new
user_interface = UserInterface.new

player = "human"
#player = "comp"

turn = Turn.new(player, board)

puts "row_count is  #{board.getboard.row_count}"
puts "column_count is  #{board.getboard.column_count}"

#p board.getboard.index()

#p board.getboard
board.display
#pry.binding
# board.place_piece('A','X')
# board.place_piece('A','X')
# board.place_piece('A','X')
# board.place_piece('A','X')
# board.place_piece('A','X')
# board.place_piece('A','X')
# board.place_piece('B','X')
# board.place_piece('B','X')
# board.place_piece('B','X')
# board.place_piece('B','X')
# board.place_piece('B','X')
# board.place_piece('B','X')
#board.place_piece('A','X')
#board.display
#board.getboard.transpose.column(0) { |e| puts e }
#puts
#p board.getboard.index
board.getboard.column(1) { |e| puts e }
puts
board.getboard.row(5) { |e| print e }
puts
user_interface.place_msg
answer = user_interface.getinput
puts "element value of #{answer} col and lowest row is #{board.getboard[5,answer]}"
#puts board.getboard.column_vectors
#puts board.getboard.row_vectors

#board.display
#board.place_piece('A','X')
#p board.board_is_full?
