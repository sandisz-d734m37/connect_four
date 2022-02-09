require 'rspec'
require './lib/board'

RSpec.describe Board do

  xit "board exists" do
    board = Board.new
    expect(board).to be_an_instance_of(Board)
  end

  xit "#display_board" do
    #display empty_game_board
    # 6 by 7 table with header of A-G
#    printed = "ABCDEFG\n.......\n.......\n.......\n.......\n.......\n.......\n"
#    printed ="ABCDEFG\n" + ".......\n" +".......\n"
#    puts printed
#    board = Board.new
#    expect{ board.display }.to output(printed).to_stdout
  end

end
