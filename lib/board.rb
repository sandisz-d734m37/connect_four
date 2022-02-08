require 'pry'

board_columns = {
  "A" => [".",".",".",".",".",".","."],
  "B" => [".",".",".",".",".",".","."]
#  "C" => ".",".",".",".",".",".","."
#  "D" => ".",".",".",".",".",".","."
#  "E" => ".",".",".",".",".",".","."
#  "F" => ".",".",".",".",".",".","."
#  "G" => ".",".",".",".",".",".","."
  }

board_rows = {
  row0: [".",".",".",".",".",".","."],
  row1: [".",".",".",".",".",".","."],
  row2: [".",".",".",".",".",".","."],
  row3: [".",".",".",".",".",".","."],
  row4: [".",".",".",".",".",".","."],
  row5: [".",".",".",".",".",".","."],
  row6: [".",".",".",".",".",".","."]

}
puts "ABCDEFG"
puts "#{board_rows[:row0][0]}#{board_rows[:row0][1]}#{board_rows[:row0][2]}#{board_rows[:row0][3]}#{board_rows[:row0][4]}#{board_rows[:row0][5]}#{board_rows[:row0][6]}"
puts "#{board_rows[:row1][0]}#{board_rows[:row1][1]}#{board_rows[:row0][2]}#{board_rows[:row0][3]}#{board_rows[:row0][4]}#{board_rows[:row0][5]}#{board_rows[:row0][6]}"
puts "#{board_rows[:row2][0]}#{board_rows[:row2][1]}#{board_rows[:row0][2]}#{board_rows[:row0][3]}#{board_rows[:row0][4]}#{board_rows[:row0][5]}#{board_rows[:row0][6]}"
puts "#{board_rows[:row3][0]}#{board_rows[:row3][1]}#{board_rows[:row0][2]}#{board_rows[:row0][3]}#{board_rows[:row0][4]}#{board_rows[:row0][5]}#{board_rows[:row0][6]}"
puts "#{board_rows[:row4][0]}#{board_rows[:row4][1]}#{board_rows[:row0][2]}#{board_rows[:row0][3]}#{board_rows[:row0][4]}#{board_rows[:row0][5]}#{board_rows[:row0][6]}"
puts "#{board_rows[:row5][0]}#{board_rows[:row5][1]}#{board_rows[:row0][2]}#{board_rows[:row0][3]}#{board_rows[:row0][4]}#{board_rows[:row0][5]}#{board_rows[:row0][6]}"
puts "#{board_rows[:row6][0]}#{board_rows[:row6][1]}#{board_rows[:row0][2]}#{board_rows[:row0][3]}#{board_rows[:row0][4]}#{board_rows[:row0][5]}#{board_rows[:row0][6]}"

#puts "#{board_rows[:row0][0]}#{board_rows[:row0][1]}#{board_rows[:row0][2]}#{board_rows[:row0][3]}#{board_rows[:row0][4]}#{board_rows[:row0][5]}#{board_rows[:row0][6]}"
#board_rows.each do |row, value|
#puts "row is #{row}"
#binding.pry
#puts "#{board_rows[:row][0]}#{board_rows[:row][1]}"
#puts "#{board_rows[row][0]}#{board_rows[row][1]}#{board_rows[row][2]}#{board_rows[row][3]}#{board_rows[row][4]}#{board_rows[row][5]}#{board_rows[row][6]}"
#end
#puts "#{board_rows[:row0][0]}#{board_rows[:row0][1]}#{board_rows[:row0][2]}#{board_rows[:row0][3]}#{board_rows[:row0][4]}#{board_rows[:row0][5]}#{board_rows[:row0][6]}"
#print board_rows[:row1]
#board.each do |key, value|
#     print key.first
#     print value
#end
#binding.pry
