require 'pry'
require 'rspec'
require './lib/board'

RSpec.describe Board do
  before(:each) do
    gameboard = [[".",".",".",".",".",".","."],
          [".",".",".",".",".",".","."],
          [".",".",".",".",".",".","."],
          [".",".",".",".",".",".","."],
          [".",".",".",".",".",".","."],
          [".",".",".",".",".",".","."]]
    @board = Board.new(gameboard)
  end

  it "exists" do
    expect(@board).to be_an_instance_of(Board)
  end

  it "can display the board" do
    printed = "ABCDEFG\n.......\n.......\n.......\n.......\n.......\n.......\n"
    expect{ @board.display }.to output(printed).to_stdout
  end

  it "can place a piece" do
    @board.place_piece('A','X')
    expect(@board.board[5][0]).to eq('X')
  end

  it "cannot place a piece if column is full" do

    6.times do
      @board.place_piece('A','X')
    end

    expect(@board.place_piece('A','X')).to be false
  end

  it "Can determine a vertical win" do

    expect(@board.won?).to be false

    until @board.won? == true
      @board.place_piece('G', 'X')
    end

    expect(@board.board[2..5]).to all(include('X'))
    expect(@board.board[1]).not_to include('X')

  end

  it "Can determine horizontal win" do

    expect(@board.won?).to be false

    until @board.won? == true
      (0..3).each do |col|
        @board.place_piece(col, 'X')
      end
    end

    expect(@board.board.transpose[0..3]).to all(include('X'))
    expect(@board.board.transpose[4]).not_to include('X')
  end

  it "Can determine if the board is full" do

    until @board.board_is_full? == true
      (0..6).each do |col|
        @board.place_piece(col, 'X')
      end
    end

    expect(@board.board_is_full?).to be true
  end



  it "#board_is_full test" do
   draw_board = [
       ["X","X","X","X","X","X","X"],
       ["X","X","X","X","X","X","X"],
       ["X","X","X","X","X","X","X"],
       ["X","X","X","X","X","X","X"],
       ["X","X","X","X","X","X","X"],
       ["X","X","X","X","X","X","X"]
     ]
   drawboard = Board.new(draw_board)
   expect(drawboard.board_is_full?).to be true
 end

 it "#can clear the board" do
   full_board = [
       ["X","X","X","X","X","X","X"],
       ["X","X","X","X","X","X","X"],
       ["X","X","X","X","X","X","X"],
       ["X","X","X","X","X","X","X"],
       ["X","X","X","X","X","X","X"],
       ["X","X","X","X","X","X","X"]
     ]

   empty_board = [
     [".",".",".",".",".",".","."],
     [".",".",".",".",".",".","."],
     [".",".",".",".",".",".","."],
     [".",".",".",".",".",".","."],
     [".",".",".",".",".",".","."],
     [".",".",".",".",".",".","."]]

     testboard =Board.new(full_board)
     expect(testboard.board_is_full?).to be true
     testboard.clear_board
     expect(testboard.board_is_full?).to be false
   end


  it "col check" do
    col_board = [
        [".",".",".",".",".",".","."],
        [".",".",".",".",".",".","."],
        [".",".",".",".",".",".","."],
        [".",".",".",".",".",".","."],
        [".",".",".",".",".",".","."],
        ["X","X","X","X",".",".","."]
      ]
    testboard = Board.new(col_board)
    expect(testboard.check_columns).to be true
  end

  it "row check" do
    row_board = [
        ["X",".",".",".",".",".","."],
        ["X",".",".",".",".",".","."],
        ["X",".",".",".",".",".","."],
        ["X",".",".",".",".",".","."],
        [".",".",".",".",".",".","."],
        [".",".",".",".",".",".","."]
      ]
    testboard = Board.new(row_board)
    expect(testboard.check_rows).to be true
  end

  xit "#won? can tell if game has been won" do
  end
end
