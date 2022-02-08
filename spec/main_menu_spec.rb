require 'rspec'
require './lib/main_menu'
#require './lib/display_board'

RSpec.describe MainMenu do

  xit "#MainMenu exists" do
    mainmenu = MainMenu.new
    expect(mainmenu).to be_an_instance_of(MainMenu)
  end

  it "#banner is displayed" do

    #displays banner to user
    mainmenu = MainMenu.new
    printed = "Welcome to CONNECT FOUR\nEnter p to play. Enter q to quit.\n"
    expect{ mainmenu.banner }.to output(printed).to_stdout

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

end
