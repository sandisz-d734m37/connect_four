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
    col = col.gsub(/[A-G]/) {|m| m.ord - 65}
    col_num = col.to_i
    open_row = "none"

    #find lowest open row for givin col
    row_num = [5,4,3,2,1,0]
    row_num.each do |row|
      if @board[row][col_num] == "."
        open_row = row
        #exit on finding 1st open row
        break
      end
    end

    #found open row place piece
    if open_row != "none"
      @board[open_row][col_num] = type
      return true
    else
      return false
    end
  end

  def board_is_full?

    check_board = @board

  end
#puts    check_board.select {|e| e[0] == '.'}
#    puts check_board.any?('.')
#    puts check_board.all? {|e| e == "."}
#    puts check_board.any? {|e| e == '.'}
#    puts check_board.all? {|e| e == check_board.first}

end
