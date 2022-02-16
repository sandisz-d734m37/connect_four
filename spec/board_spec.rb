require 'rspec'
require './lib/board'

RSpec.describe Board do

  it "exists" do
    board = Board.new
    expect(board).to be_an_instance_of(Board)
  end

  it "can display the board" do
      board = Board.new
      printed = "ABCDEFG\n.......\n.......\n.......\n.......\n.......\n.......\n"
      expect{ board.display }.to output(printed).to_stdout
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

    expect(board.won?).to be false

    until board.check_columns == true
      board.place_piece('G', 'X')
    end

    expect(board.board[2..5]).to all(include('X'))
    expect(board.board[1]).not_to include('X')

  end

  it "Can determine horizontal win" do
    board = Board.new

    expect(board.won?).to be false

    until board.check_rows == true
      (0..3).each do |col|
        board.place_piece(col, 'X')
      end
    end

    expect(board.board.transpose[0..3]).to all(include('X'))
    expect(board.board.transpose[4]).not_to include('X')
  end

  it "Does not find win at 3 up diagonal same entries; does on 4th" do
    board = Board.new
    board.place_piece('C','O')
    board.place_piece('D','█')
    board.place_piece('E','█')
    board.place_piece('D','O')
    board.place_piece('E','█')
    board.place_piece('E','O')
    board.place_piece('F','█')
    board.place_piece('F','█')
    board.place_piece('F','O')
    expect(board.check_upward_diagonals).to be false
    expect(board.won?).to be false
    board.place_piece('F','O')
    expect(board.check_upward_diagonals).to be true
    expect(board.won?).to be true
  end

  it "Does not find win at 3 down diagonal same entries; does on 4th" do
    board = Board.new
    board.place_piece('C','█')
    board.place_piece('C','█')
    board.place_piece('C','█')
    board.place_piece('C','O')
    board.place_piece('D','█')
    board.place_piece('D','█')
    board.place_piece('D','O')
    board.place_piece('E','█')
    board.place_piece('E','O')
    expect(board.check_downward_diagonals).to be false
    expect(board.won?).to be false
    board.place_piece('F','O')
    expect(board.check_downward_diagonals).to be true
    expect(board.won?).to be true
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

  it "can return won condition via .won? method" do
    board = Board.new

    expect(board.won?).to be false

    until board.check_columns == true
      board.place_piece('G', 'X')
      end
    expect(board.won?).to be true
      end

    it "can reset board to empty state" do
        board = Board.new
        board.place_piece('A','X')
        expect(board.board[5][0]).to eq('X')
        board.clear_board
        expect(board.board[5][0]).to eq('.')
      end
end
