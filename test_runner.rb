#!/Users/johnhennerich/.rbenv/shims/ruby
#!/usr/bin/ruby
require 'pry'
require 'set'
require './lib/board'
require './lib/turn'



diag_board = [
    ["X",".",".",".",".",".","."],
    ["X",".",".",".",".",".","."],
    ["X",".",".",".",".",".","."],
    ["X",".",".",".",".",".","."],
    [".",".",".",".",".",".","."],
    [".",".",".",".",".",".","."]
  ]
board =Board.new(diag_board)
turn = Turn.new("human", diag_board)
board.display
board.place_piece('A','O')
board.display
p board.check_rows
=begin
#  binding.pry
# p board.check_forward_diaganols
diag_board = [
    [".",".",".",".",".",".","."],
    [".",".",".",".",".",".","."],
    [".",".",".",".",".",".","."],
    [".",".",".",".",".",".","."],
    [".",".",".",".",".",".","."],
    [".",".",".","X","X","X","X"]
  ]
board =Board.new(diag_board)
#p board.check_columns

diag_board = [
    [".",".",".",".",".","X","."],
    [".",".",".",".","X",".","."],
    [".",".",".","X",".",".","."],
    [".",".","X",".",".",".","."],
    [".",".",".",".",".",".","."],
    [".",".",".",".",".",".","."]
  ]
board =Board.new(diag_board)
p board.check_forward_diaganols
=end
