require 'rspec'
require './lib/main_menu'
require './lib/turn'
#require './lib/display_board'

RSpec.describe Turn do

  xit "#Turn exists" do
    turn = Turn.new
    expect(turn).to be_an_instance_of(Turn)
  end

  xit "#display_board" do
      #display current board to player
  end

  xit "#player takes a turn" do
  end

  context 'when player inputs vaild choice' do
    xit "places a piece" do
    #input choice from user
    #validate that the spot is open
    end
  end

  xit "#player piece is represend by X" do

  end

  xit "#computer takes a turn" do
  end
  
  xit "computer places a piece" do

  end

  xit "#game over?" do
    #did the last user/compter turn win the game
  end

  xit "#game a draw?" do
    #are all vaild spaces on the board filled
  end

end
