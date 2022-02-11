#./lib/board.rb
require 'pry'
require 'matrix'

class Board
  attr_reader :open_row
  def initialize(open_row = "none")

#    @board = Matrix.build(7,6){|row,col| "."}

  # 2d arrary   6 rows 7 col
     @board = Matrix[
            [".",".",".",".",".",".","."],
            [".",".",".",".",".",".","."],
            [".",".",".",".",".",".","."],
            [".",".",".",".",".",".","."],
            [".",".",".",".",".",".","."],
            [".",".",".",".",".",".","."]]

=begin
  #test board
    @board = Matrix[
            ["X","0","X","X","X","X","X"],
            [".","1","X","X","X","X","X"],
            ["X","2","X","X","X","X","X"],
            ["X","3","X","X","X","X","X"],
            ["X","4","X","X","X","X","X"],
            ["X","5","X","X","X","X","X"]]

=end
    @open_row = open_row
  end
###
#display contents of board to user
###
  def display
    linesplit = 0

    puts "ABCDEFG"

    @board.each_with_index do |element, row, col|
    linesplit += 1
      print element
#      print @board[row,col]
       if linesplit % 7 == 0
          puts
       end
     end
  end

###
# Place a piece in the given column
###
  def place_piece(col, type)
    #map letter givin in col to a number
    #need to error chech for enter/return from user
    # col =
    col_num = (col.gsub(/[A-G]/) {|m| m.ord - 65}).to_i
    #find lowest open row for givin col
    row_num = [5,4,3,2,1,0]

    row_num.each do |row|
      if @board[row,col_num] == "."
        @open_row = row
        #exit on finding 1st open row
        break
      else
        @open_row = "none"
      end
    end
    #found open row place piece
    if @open_row == "none"
      return false
    else
      @board[@open_row,col_num] = type
      return true
    end
  end

  def board_is_full?
    spot_counter = 0
    @board.each_with_index do |element, row, col|
      if element != "."
        spot_counter += 1
      end
    end
#returns a turn value when 42
    spot_counter == 42
  end
end
