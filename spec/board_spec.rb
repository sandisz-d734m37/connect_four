require 'pry'
require 'rspec'
require './lib/board'

RSpec.describe Board do

  xit "board exists" do
    board = Board.new
    expect(board).to be_an_instance_of(Board)
  end

  xit "#display" do
    #display empty_game_board
    # 6 by 7 table with header of A-G
#    printed = "ABCDEFG\n.......\n.......\n.......\n.......\n.......\n.......\n"
#    printed ="ABCDEFG\n" + ".......\n" +".......\n"
#    puts printed
#    board = Board.new
#    expect{ board.display }.to output(printed).to_stdout
  end

  xit "#place_piece can place a piece" do
    board = Board.new
      expect(board.place_piece('A','X')).to be true
  end

  xit "#place_piece cannot place a piece if column is full" do
    board = Board.new

    board.place_piece('A','X')
    board.place_piece('A','X')
    board.place_piece('A','X')
    board.place_piece('A','X')
    board.place_piece('A','X')
    board.place_piece('A','X')
    board.place_piece('A','X')

    expect(board.place_piece('A','X')).to be false
  end

  it "backward diag check col A-D" do
    diag_board = [
        ["X",".",".",".",".",".","."],
        [".","X",".",".",".",".","."],
        [".",".","X",".",".",".","."],
        [".",".",".","X",".",".","."],
        [".",".",".",".",".",".","."],
        [".",".",".",".",".",".","."]
      ]
    board = Board.new(diag_board)
    expect(board.check_backward_diaganols).to be true
  end

  it "backward diag check col B-E" do

    diag_board = [
        [".",".",".",".",".",".","."],
        [".","X",".",".",".",".","."],
        [".",".","X",".",".",".","."],
        [".",".",".","X",".",".","."],
        [".",".",".",".","X",".","."],
        [".",".",".",".",".",".","."]
      ]

    board = Board.new(diag_board)
    expect(board.check_backward_diaganols).to be true
  end
  it "backward diag check col B-E" do

    diag_board = [
        [".",".",".",".",".",".","."],
        [".",".",".",".",".",".","."],
        [".",".","X",".",".",".","."],
        [".",".",".","X",".",".","."],
        [".",".",".",".","X",".","."],
        [".",".",".",".",".","X","."]
      ]

    board = Board.new(diag_board)
    expect(board.check_backward_diaganols).to be true
  end
  it "backward diag check" do
    diag_board = [
        [".",".",".",".",".",".","."],
        ["X",".",".",".",".",".","."],
        [".","X",".",".",".",".","."],
        [".",".","X",".",".",".","."],
        [".",".",".","X",".",".","."],
        [".",".",".",".",".",".","."]
      ]
    board = Board.new(diag_board)
    expect(board.check_backward_diaganols).to be true
  end
  it "backward diag check" do
    diag_board = [
        [".",".",".",".",".",".","."],
        [".",".",".",".",".",".","."],
        [".","X",".",".",".",".","."],
        [".",".","X",".",".",".","."],
        [".",".",".","X",".",".","."],
        [".",".",".",".","X",".","."]
      ]
    board = Board.new(diag_board)
    expect(board.check_backward_diaganols).to be true
  end
  it "backward diag check" do
    diag_board = [
        [".",".","X",".",".",".","."],
        [".",".",".","X",".",".","."],
        [".",".",".",".","X",".","."],
        [".",".",".",".",".","X","."],
        [".",".",".",".",".",".","."],
        [".",".",".",".",".",".","."]
      ]
    board = Board.new(diag_board)
    expect(board.check_backward_diaganols).to be true
  end
  it "backward diag check" do
    diag_board = [
        [".",".",".",".",".",".","."],
        [".",".",".","X",".",".","."],
        [".",".",".",".","X",".","."],
        [".",".",".",".",".","X","."],
        [".",".",".",".",".",".","X"],
        [".",".",".",".",".",".","."]
      ]
    board = Board.new(diag_board)
    expect(board.check_backward_diaganols).to be true
  end
end
