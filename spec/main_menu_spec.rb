require 'rspec'
require './lib/main_menu'
#require './lib/display_board'
def output_to_user
  puts "Hello"
end

RSpec.describe MainMenu do

  xit "#MainMenu exists" do
    mainmenu = MainMenu.new
    expect(mainmenu).to be_an_instance_of(MainMenu)
  end

  it "#welcom_msg is displayed" do
    #displays banner to user
#    printed = capture_stdout do
    printed = puts "Welcome to CONNECT FOUR Enter p to play. Enter q to quit."
#    puts "#{printed}"
#    end
#    expect(puts "#{printed}").to eq("Welcome to CONNECT FOUR Enter p to play. Enter q to quit.")
    #expect{ printed }.to output("Welcome to CONNECT FOUR Enter p to play. Enter q to quit.").to_stdout
    expect{ output_to_user }.to output("Hello\n").to_stdout
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
