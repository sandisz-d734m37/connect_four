require './lib/user_interface'
class Turn
  attr_reader :turn_type
  def initialize(turn_type)
    @turn_type = turn_type
  end

  def start
    user_interface.place_msg
  end

end
