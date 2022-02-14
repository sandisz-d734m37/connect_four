#!/Users/johnhennerich/.rbenv/shims/ruby
#!/usr/bin/ruby
require 'pry'
require 'set'
require './lib/board'

diag_board = [
    ["X",".",".",".",".",".","."],
    ["X",".",".",".",".",".","."],
    ["X",".",".",".",".",".","."],
    ["X",".",".",".",".",".","."],
    [".",".",".",".",".",".","."],
    [".",".",".",".",".",".","."]
  ]
board =Board.new(diag_board)
#  binding.pry
p board.check_rows
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
