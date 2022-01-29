# C - Alchemist
# 自分の回答 25:00 WA

# gets.to_i
# v = gets.split.map(&:to_i).sort

# if v.length == 2
#   puts (v[0] + v[1]) * 0.5
# else
#   arr = v[v.length-3..v.length-1]
#   num = (arr[0] + arr[1]) * 0.5
#   puts ((num + arr[2]) * 0.5).to_i
# end

# 模範回答
require 'byebug'
byebug

N = gets.to_i
d = gets.split.map(&:to_i).sort
sum = d[0]
(N-1).times do |i|
  sum = (sum + d[i+1])/2.0
end

puts sum
