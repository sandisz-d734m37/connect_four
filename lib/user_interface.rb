class UserInterface

  def initialize
  end

  ###
  # print to screen weclome
  ###
  def welcome_banner
    puts "Welcome to CONNECT FOUR"
    puts "Enter p to play. Enter q to quit."
  end

  def place_msg
    puts "Please choose a column to place your piece A-G"
  end

  ###
  # read input from stdin
  ###
  def getinput
    gets.chomp
  end



end
