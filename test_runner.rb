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
board.display
#pry.binding
board.place_piece('A','X')
board.display
#board.display
#board.board_is_full?

=begin
board.place_piece('A','O')
board.place_piece('A','X')
board.place_piece('A','X')
board.place_piece('A','X')
board.place_piece('A','X')
board.place_piece('A','X')
board.place_piece('A','X')
board.place_piece('A','X')
board.place_piece('A','X')
board.display
=end
