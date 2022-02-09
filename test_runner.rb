#!/usr/bin/ruby
require 'pry'
require './lib/board'

board =Board.new

board.display
board.place_piece(5,0,'X')
board.place_piece(4,0,'X')
board.display
