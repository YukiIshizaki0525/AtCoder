# Shuffle
# 自分の回答 25:04 AC
arr = []
while ( s = gets.chomp ) != "-"
  gets.to_i.times { s.concat(s.slice!(0, gets.to_i)) }
  arr.push(s)
end
puts arr

# 模範回答
while (s = gets.chomp) != '-'
gets.to_i.times{ s += s.slice!(0 ,gets.to_i) }
puts s
end