#./lib/board.rb
require 'pry'
class Board
  attr_reader :open_row
  def initialize(open_row = "none")
  # 2d arrary  7cols x 6 rows
    @board = [[".",".",".",".",".",".","."],
            [".",".",".",".",".",".","."],
            [".",".",".",".",".",".","."],
            [".",".",".",".",".",".","."],
            [".",".",".",".",".",".","."],
            [".",".",".",".",".",".","."]]
    @open_row = open_row
  end
###
#display contents of board to user
###
  def display
    puts "ABCDEFG"

    @board.each {|dot| puts dot.join("")}
    #@board.each do |row|
     # row.each do |col|
      #  print col
      #end
      #puts
    #end
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
    spot_counter = 0
    @board.each do |row|
      row.each do |col|
        # puts col
        if col != "."
          spot_counter += 1
        end
      end
    end
    spot_counter == 42
  end

  def won?
    return check_columns
#come back, fill in
  end

  def check_columns(board_state = @board)
    board_state.each do |col|

      (0..2).each do |row|

        won = col[row..(row + 3)].all? {
          |spot| spot == col[row] && spot != "."
        }
        return true if won

      end

    end

    false

  end


end
