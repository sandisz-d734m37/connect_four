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

board.place_piece('A','X')
board.place_piece('B','X')
board.place_piece('B','X')
board.place_piece('C','X')
board.place_piece('C','X')
board.place_piece('C','X')
board.place_piece('D','X')
board.place_piece('D','X')
board.place_piece('D','X')
board.place_piece('D','X')




board.display

p board.won?
#pry
p board.check_forward_diaganols

#board.board_is_full?
