#!/Users/johnhennerich/.rbenv/shims/ruby
#!/usr/bin/ruby
require 'pry'
require 'set'
require './lib/board'

board =Board.new
board.display
board.place_piece('A','X')
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
#board.board_is_full?
