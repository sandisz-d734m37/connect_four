require 'rspec'
require './lib/board'

RSpec.describe Board do
  board = Board.new

  it "exists" do
    expect(board).to be_an_instance_of(Board)
  end

  xit "can display the board" do
    expect(board.display[0]).to eq(". . . . . . .")
  end

  it "#place_piece can place a piece" do
    board.place_piece('A','X')
    expect(board.board[5][0]).to eq('X')
  end

  it "#place_piece cannot place a piece if column is full" do
    board = Board.new

    board.place_piece('A','X')
    board.place_piece('A','X')
    board.place_piece('A','X')
    board.place_piece('A','X')
    board.place_piece('A','X')
    board.place_piece('A','X')

    expect(board.place_piece('A','X')).to be false
  end

end
