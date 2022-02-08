require 'rspec'
#require './lib/display_board'


RSpec.describe MainMenu do
  xit "#MainMenu exists" do
    mainmenu = MainMenu.new
    expect(mainmenu).to be_an_instance_of(MainMenu)
  end

  xit "#welcom_msg is displayed" do
    #displays banner to user
    #Welcome to CONNECT FOUR
    #Enter p to play. Enter q to quit.
  end

  xit "#user_interaction is displayed" do

    #from welcom_msg reads p or q. otherwise exit program
    #request user to place a piece
    #Please enter A-G to drop your game piece
    #expect A-G from user
    #during a current game read A-G to place piece
  end

  xit "#start_game" do
    #start_game
    #if p start the game, if q exit
  end
  xit "#display_board" do
    #display empty_game_board
    # 6 by 7 table with header of A-G
    #ABCDEFG
    #.......
    #.......
    #.......
    #.......
    #.......
    #.......
  end

end
