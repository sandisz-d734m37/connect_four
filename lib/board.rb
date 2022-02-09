#./lib/board.rb
require 'pry'
class Board

  def initialize
  # 2d arrary  7cols x 6 rows
  @board = [[".",".",".",".",".",".","."],
            [".",".",".",".",".",".","."],
            [".",".",".",".",".",".","."],
            [".",".",".",".",".",".","."],
            [".",".",".",".",".",".","."],
            [".",".",".",".",".",".","."]]

=begin
  @board = [[".",".",".",".",".",".","."],
            [".",".",".",".",".",".","."]]
=end
  end

  def display
    puts "ABCDEFG"
    @board.each do |row|
      row.each do |col|
        print col
      end
      puts
    end
  end

  def place_piece(row, col, type)
    #add X to bottom left
    puts "row is #{row} col is #{col}"
    puts "type is #{type}"
    @board[row][col] = type
  end
end
