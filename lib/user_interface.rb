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
    puts "----------"
    puts "Its a DRAW"
    puts "----------"
  end

  def human_winner
    puts "----------"
    puts "Congrats you Won!"
    puts "----------"
  end

  def comp_winner
    puts "----------"
    puts "You have been defeated the computer"
    puts "Pretty sneaky Sis"
    puts "----------"
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
