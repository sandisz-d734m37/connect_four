require 'rspec'
require './lib/board'

RSpec.describe Board do

  it "exists" do
    board = Board.new
    expect(board).to be_an_instance_of(Board)
  end

  xit "can display the board" do
    board = Board.new
    expect(board.display[0]).to eq(". . . . . . .")
  end

  it "can place a piece" do
    board = Board.new
    board.place_piece('A','X')
    expect(board.board[5][0]).to eq('X')
  end

  it "cannot place a piece if column is full" do
    board = Board.new

    6.times do
      board.place_piece('A','X')
    end

    expect(board.place_piece('A','X')).to be false
  end

  it "Can determine a vertical win" do
    board = Board.new

    until board.won? == true
      board.place_piece('G', 'X')
    end

    expect(board.board[2..5]).to all(include('X'))
    expect(board.board[1]).not_to include('X')

  end

  it "Can determine horizontal win" do
    board = Board.new

    until board.won? == true
      (0..3).each do |col|
        board.place_piece(col, 'X')
      end
    end

    expect(board.board.transpose[0..3]).to all(include('X'))
    expect(board.board.transpose[4]).not_to include('X')
  end

  it "Can determine if the board is full" do
    board = Board.new

    until board.board_is_full? == true
      (0..6).each do |col|
        board.place_piece(col, 'X')
      end
    end

    expect(board.board_is_full?).to be true
  end

end
