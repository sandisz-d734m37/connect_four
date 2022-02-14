#!/Users/johnhennerich/.rbenv/shims/ruby
#!/usr/bin/ruby
require 'pry'
require 'set'
require './lib/board'

#board =Board.new

#board.display

#board.place_piece('G','O')
#board.place_piece('G','O')
#board.place_piece('G','O')
#board.place_piece('G','O')
#board.place_piece('D','X')
# board.place_piece('A','X')
# board.place_piece('A','X')

#board.display

#p board.won?

#board.board_is_full?


############################################################

puts "----------------------------"
puts "Downard Win Test"
puts "----------------------------"


board =Board.new

# board.place_piece('C','█')
# board.place_piece('C','█')
# board.place_piece('C','█')
# board.place_piece('C','O')
# board.place_piece('D','█')
# board.place_piece('D','█')
# board.place_piece('D','O')
# board.place_piece('E','█')
# board.place_piece('E','O')

board.place_piece('C','O')
board.place_piece('D','█')
board.place_piece('E','█')
board.place_piece('D','O')
board.place_piece('E','█')
board.place_piece('E','O')
board.place_piece('F','█')
board.place_piece('F','█')
board.place_piece('F','O')


board.display
p board.won?
puts "Upward: #{board.check_upward_diagonals}"

#puts "Downward: #{board.check_downward_diagonals}"

board.place_piece('F','O')


board.display
p board.won?

puts "Upward: #{board.check_upward_diagonals}"
#puts "Downward: #{board.check_downward_diagonals}"
