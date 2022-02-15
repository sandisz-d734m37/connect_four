require './lib/user_interface'
require './lib/board'
class Turn
  attr_reader :board

  def initialize(board)
#  def initialize
#   @turn_type = turn_type
    @user_interface = UserInterface.new
    @board = board
  end

  def start
    @user_interface.place_msg
  end

 ###########################################################################
  #def playagain                               # deprecate until re-factor
  #  puts "Would you like to play again?"
  #  answer = @user_interface.getinput
  #  if answer.upcase == "Y"
  #    return true
  #  end
  #end
 ###########################################################################

  def take_turn(type)
#moved to end of until loop in runner    @board.display
    if type == "human"

      user_response = @user_interface.getinput.upcase
      until user_response.match(/[A-G]/) && user_response.length == 1
        @user_interface.place_msg
        user_response = @user_interface.getinput.upcase
      end
      while @board.place_piece(user_response,'X') == false
        puts "column full, choose a row other than #{user_response}"
        user_response = @user_interface.getinput.upcase
      end

    else
      #ai turnstuff here
      comp_response = @user_interface.compinput.upcase
      # @board.place_piece(comp_respone, 'O')
      while @board.place_piece(comp_response,'O') == false
        comp_response = @user_interface.compinput.upcase
      end
    end
  end
end
