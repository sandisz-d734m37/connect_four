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

    #each element of board strip out \n to format puts
    @board.each {|dot| puts dot.join("")}
    puts

  end

###
# Place a piece in the given column
###
  def place_piece(col, type)
    #need to error chech for enter/return from user
    #map letter givin in col to a number
    # turn A-G into  single-byte character encoding and subtract 65
    # A = 65 becomes 0 to use in array positions
    col_num = (col.gsub(/[A-G]/) {|m| m.ord - 65}).to_i

    #find lowest open row for givin col
    row_num = [5,4,3,2,1,0]
    row_num.each do |row|
      if @board[row][col_num] == "."
        @open_row = row
        #exit on finding 1st open row
        break
      else
        @open_row = "none"
      end
    end

    #found open row place piece
    if @open_row == "none"
#      puts "open row is #{@open_row}"
      return false
    else
#      puts "open row in else is #{@open_row}"
      @board[@open_row][col_num] = type
      return true
    end
  end

###
# When all 42 spots in the board are taken return true
###
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

###
# when one of the victory conditions is met return true
###
  def won?
    return check_columns || check_rows || check_forward_diaganols
  end

###
# check_columns:
###
  def check_columns(board_state = @board)

    board_state.each do |col|
#    puts "col is #{col}"
      (0..2).each do |row|
#        puts "col is #{col} row is #{row} element is #{col[row]}"
        won = col[row..(row + 3)].all? do |spot|
          spot == col[row] && spot != "."
        end
        return true if won
      end
    end
    false
  end

  def check_rows
    transposed_board = @board.transpose
    check_columns(transposed_board)
  end

  def check_forward_diaganols
      (0..3).each do |col_idx|
        (0..3).each do |col_height|
          diagonal_group = find_forward_diaganol_starting_at(col_idx, col_height)
          if diagonal_group.all? do |el|
            p el
#          binding.pry

            diagonal_group.first == el && !el.nil?
          end
            return true
          end
        end
      end

      false
    end

    def find_forward_diaganol_starting_at(col_idx, col_height)
      diagonal_group = []

      (col_idx..(col_idx + 3)).each_with_index do |col, height|
        diagonal_group << @board[col][col_height + height]
      end

p      diagonal_group
    end

end
