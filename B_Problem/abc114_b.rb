# B - 754
# 自分の回答 AC 21:00
# s = gets.chomp
# res = (s.slice(0..2).to_i - 753).abs

# (s.length).times do |i|
#   num = s.slice(i..i+2).to_i
#   res = (num - 753).abs if (num - 753).abs < res
# end

# puts res

# 模範回答
s = gets.chomp

require 'byebug'
byebug

arr = []
0.upto(s.size - 3) do |i|
  n = s[i, 3].to_i #=> s[i, 3]は文字列sのi番目から3つ文字を取ってくるという意味
  arr << (n - 753).abs
end

# arr = [630, 519, 408, 297, 186, 75, 34, 123]

puts arr.min
