require './lib/user_interface'
class Turn
#  attr_reader :turn_type
  def initialize(turn_type)
#  def initialize()
    @turn_type = turn_type
    @interface = UserInterface.new
  end

  def start
    @interface.place_msg
  end

  def take_turn(type)
    if type == "human"
      #human turn stuff here
    else
      #ai turnstuff here
    end
  end

end
