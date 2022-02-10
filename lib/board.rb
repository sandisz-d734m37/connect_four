#./lib/board.rb
require 'pry'
class Board
  attr_reader :spot_counter, :open_row
  def initialize(spot_counter = 0, open_row = "none")
  # 2d arrary  7cols x 6 rows
    @board = [[".",".",".",".",".",".","."],
            [".",".",".",".",".",".","."],
            [".",".",".",".",".",".","."],
            [".",".",".",".",".",".","."],
            [".",".",".",".",".",".","."],
            [".",".",".",".",".",".","."]]
    @spot_counter = spot_counter
    @open_row = open_row

  end
###
#display contents of board to user
###
  def display
    puts "ABCDEFG"
    @board.each do |row|
      row.each do |col|
        print col
      end
      puts
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
      if @board[row][col_num] == "."
        @open_row = row
        p @open_row
        #exit on finding 1st open row
        break
      else
        @open_row = "none"
      end
    end

    #found open row place piece
    if @open_row == "none"
      puts "open row is #{@open_row}"
      return false
    else
      puts "open row in else is #{@open_row}"
      @board[@open_row][col_num] = type
      return true
    end
  end

  def board_is_full?

  end
#puts    check_board.select {|e| e[0] == '.'}
#    puts check_board.any?('.')
#    puts check_board.all? {|e| e == "."}
#    puts check_board.any? {|e| e == '.'}
#    puts check_board.all? {|e| e == check_board.first}

end
