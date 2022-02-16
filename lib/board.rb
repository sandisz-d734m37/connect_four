###----------------------------------------
# Board: Primary logic for game
#
###----------------------------------------
class Board
  attr_reader :open_row, :board

  def initialize(open_row = "none", board = @board)
    # 2d arrary  7cols by 6 rows
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

  end

  def clear_board
    @board = [[".",".",".",".",".",".","."],
            [".",".",".",".",".",".","."],
            [".",".",".",".",".",".","."],
            [".",".",".",".",".",".","."],
            [".",".",".",".",".",".","."],
            [".",".",".",".",".",".","."]]
  end

###
# Place a piece in the given column
###
  def place_piece(col, type)
    if col.is_a? String
      col_num = (col.gsub(/[A-G]/) {|m| m.ord - 65}).to_i
      #maps letter givin in col to a number
      #needs to error chech for enter/return from user
    else
      col_num = col
    end

    #find lowest open row for givin col
    row_num = [5,4,3,2,1,0]
    row_num.each do |row|
      if @board[row][col_num] == "."
        @open_row = row
        break
        #exit on finding 1st open row
      else
        @open_row = "none"
      end
    end

    if @open_row == "none"
      return false
    else
      @board[@open_row][col_num] = type
      #found open row place the piece
      return true
    end
  end

  def board_is_full?

    spot_counter = 0
    # loop looking for board of all dots
    @board.each do |row|
      row.each do |col|
        if col != "."
          spot_counter += 1
        end
      end
    end
    spot_counter == 42
    #all 42 spots have a dot board is full
  end

  ###
  # Check all victory conditions, if any are true game has been won
  ###
  def won?
    return check_columns || check_rows || check_upward_diagonals || check_downward_diagonals
  end

  def check_columns(board_state = @board)

    board_state.each do |col|
      (0..3).each do |row|
        won = col[row..(row + 3)].all? {
          |spot| spot == col[row] && spot != "."
        }
        return true if won
      end
    end

    false
  end

  def check_rows(transposed_board = @board.transpose)
    transposed_board.each do |col|
      (0..2).each do |row|
        won = col[row..(row + 3)].all?{
          |spot| spot == col[row] && spot != "."
        }
        return true if won
      end
    end
    false
  end

  def check_downward_diagonals
    (0..2).each do |row_index|
      (0..3).each do |spot_index|
        to_check = downward_diag_to_check(row_index,spot_index)
        if to_check.all? {|spot| to_check.first == spot && spot != "."}
          return true
        end
      end
    end
    false
  end

  def downward_diag_to_check(row_index, spot_index)
    to_check = []
    (row_index..(row_index + 3)).each_with_index do |row, vert_move|
      to_check << @board[row][spot_index + vert_move]
    end
    to_check
  end

  def check_upward_diagonals
    (0..2).each do |row_index|
      (3..6).each do |spot_index|
        to_check = upward_diag_to_check(row_index, spot_index)
        if to_check.all? {|spot| to_check.first == spot && spot != "."}
          return true
        end
      end
    end
    false
  end

  def upward_diag_to_check(row_index, spot_index)
    to_check = []
    (row_index..(row_index + 3)).each_with_index do |row, vert_move|
      to_check << @board[row][spot_index - vert_move]
    end
    to_check
  end
end
