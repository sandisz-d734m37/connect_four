require 'rspec'
require './lib/turn'
require './lib/board'

RSpec.describe Turn do

  it "#Turn exists" do
    board = Board.new
    turn = Turn.new(board)
    expect(turn).to be_an_instance_of(Turn)
  end

  it "#Turn taken by any non-human entity is taken by computer" do
    board = Board.new
    turn = Turn.new(board)
    turn.take_turn('ogre')

    expect(board.board[5]).to include('O')

  end

end
