require 'rspec'
require './lib/main_menu'
require './lib/turn'
require './lib/board'

RSpec.describe Turn do

  it "#Turn exists" do
    turn = Turn.new
    expect(turn).to be_an_instance_of(Turn)
  end

=begin
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
=end

  xit "#player takes a turn places an X on the board" do
    board = Board.new
    #player input to come from user_interface code
    player_input = "A"
    #if the human player is putting the piece use X
    expect(board.place_piece(player_input, 'X')).to be true
    #
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
