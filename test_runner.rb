#!/Users/johnhennerich/.rbenv/shims/ruby
#!/usr/bin/ruby
require 'pry'
require 'set'
require './lib/board'

board =Board.new

board.display
#p board.check_backward_diaganols

p board.check_forward_diaganols
