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

  def draw
    puts "The game is a DRAW"
  end

  def winner
    puts "The game is over"
  end

  ###
  # read input from stdin
  ###
  def getinput
    gets.chomp
  end

  def compinput
    opt = ["A","B","C","D","E","F","G"]
    opt.sample
  end



end
