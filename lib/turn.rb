require './lib/user_interface'
require './lib/board'
class Turn
 attr_reader :turn_type, :board
  def initialize(turn_type, board)
#  def initialize()
    @turn_type = turn_type
    @user_interface = UserInterface.new
    @board = board
  end

  def start
    @board.display
    @user_interface.place_msg
  end

  def take_turn(type)
    if type == "human"
      user_response = @user_interface.getinput.upcase
      until user_response.match(/[A-G]/) && user_response.length == 1
        @user_interface.place_msg
        user_response = @user_interface.getinput.upcase
      end
      # binding.pry
      while @board.place_piece(user_response,'X') == false
        puts "column full, choose a row other than #{user_response}"
        user_response = @user_interface.getinput.upcase

      end
#      if @board.won?
#        puts "Congrats #{type}"
#      end
    else
      #ai turnstuff here
      comp_response = @user_interface.compinput.upcase
      # @board.place_piece(comp_respone, 'O')
      while @board.place_piece(comp_response,'O') == false
        comp_response = @user_interface.compinput.upcase
      end
#      @board.display
    end
  end

end
