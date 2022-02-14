#!/Users/johnhennerich/.rbenv/shims/ruby
#!/usr/bin/ruby
require 'pry'
require 'set'
require './lib/board'
require './lib/turn'


ary = [
    [ "a0", "b0", "c0", "d0", "e0", "f0", "g0"],
    ["a1", "b1", "c1", "d1", "e1", "f1", "g1"],
    ["a2", "b2", "c2", "d2", "e2", "f2", "g2"],
    ["a3", "b3", "c3", "d3", "e3", "f3", "g3"],
    ["a4", "b4", "c4", "d4", "e4", "f4", "g4"],
    [ "a5", "b5", "c5", "d5", "e5", "f5", "g5"]
]
board =Board.new(diag_board)
turn = Turn.new("human", diag_board)
board.display

#
# diag_board = [
#     ["X",".",".",".",".",".","."],
#     ["X",".",".",".",".",".","."],
#     ["X",".",".",".",".",".","."],
#     ["X",".",".",".",".",".","."],
#     [".",".",".",".",".",".","."],
#     [".",".",".",".",".",".","."]
#   ]
#board.place_piece('A','O')
#board.display
#p board.check_rows
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
