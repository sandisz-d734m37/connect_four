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

  it "#banner is displayed" do
    #displays banner to user
#    printed = capture_stdout do
#    puts "#{printed}"
#    end
#    expect(puts "#{printed}").to eq("Welcome to CONNECT FOUR Enter p to play. Enter q to quit.")
    mainmenu = MainMenu.new
    printed = "Welcome to CONNECT FOUR\nEnter p to play. Enter q to quit.\n"
    expect{ mainmenu.banner }.to output(printed).to_stdout
#    puts mainmenu.banner
#    expect{ mainmenu.banner }.to output("Hello\n").to_stdout
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
