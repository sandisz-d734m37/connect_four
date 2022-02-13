#!/Users/johnhennerich/.rbenv/shims/ruby
#!/usr/bin/ruby
require 'pry'
require 'set'
require './lib/board'

board =Board.new

board.display

=begin
board.place_piece('G','X')
board.place_piece('B','X')
board.place_piece('G','X')
board.place_piece('G','X')
board.place_piece('G','X')
board.place_piece('G','X')
board.place_piece('G','X')

board.place_piece('A','X')
board.place_piece('B','X')
board.place_piece('C','X')
board.place_piece('D','X')
board.place_piece('E','X')
board.place_piece('F','X')
board.place_piece('G','X')

=end

board.place_piece('A','O')
board.place_piece('B','a')
board.place_piece('B','X')
board.place_piece('C','b')
board.place_piece('C','c')
board.place_piece('C','X')
board.place_piece('D','d')
board.place_piece('D','e')
board.place_piece('D','f')
board.place_piece('D','X')




board.display

#p board.won?
#pry
p board.check_forward_diaganols

#board.board_is_full?
