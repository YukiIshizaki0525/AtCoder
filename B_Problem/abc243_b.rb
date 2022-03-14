# B - Hit and Blow
# 自分の回答 AC

gets.to_i
a = gets.split.map &:to_i
b = gets.split.map &:to_i

no_1 = [a,b].transpose.count{|a,b| a == b}
puts no_1
puts [a,b].flatten.tally.count{|k,v| v==2} - no_1