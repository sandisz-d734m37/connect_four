require 'pry'

letterboard = [ ["a","b","c"],
                ["d","e","f"]
]
#print letterboard

# ary =
#   [["a5", "b5", "c5", "d5", "e5", "f5", "g5"],
# ["a4", "b4", "c4", "d4", "e4", "f4", "g4"],
# ["a3", "b3", "c3", "d3", "e3", "f3", "g3"],
# ["a2", "b2", "c2", "d2", "e2", "f2", "g2"],
# ["a1", "b1", "c1", "d1", "e1", "f1", "g1"],
# ["a0", "b0", "c0", "d0", "e0", "f0", "g0"]]
ary = [
    [ "a0", "b0", "c0", "d0", "e0", "f0", "g0"],
    ["a1", "b1", "c1", "d1", "e1", "f1", "g1"],
    ["a2", "b2", "c2", "d2", "e2", "f2", "g2"],
    ["a3", "b3", "c3", "d3", "e3", "f3", "g3"],
    ["a4", "b4", "c4", "d4", "e4", "f4", "g4"],
    [ "a5", "b5", "c5", "d5", "e5", "f5", "g5"]
]



#binding.pry
ary.each do |e|
  puts e.join("")
end
  puts

ary.transpose.each do |e|
  puts e.join("")
end
  puts
  binding.pry
