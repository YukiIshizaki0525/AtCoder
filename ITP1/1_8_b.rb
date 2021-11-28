#Sum of Numbers
# 自分の回答 11:08 AC
loop do
  x = gets.split("").map(&:to_i)
  break if x.sum == 0
  puts x.sum
end

# 模範回答
while (n = gets.to_i) != 0
  puts n.to_s.split("").map(&:to_i).inject(:+)
end