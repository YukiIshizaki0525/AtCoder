# # B - String Shifting 2回目 WA

# s = gets
# s = s*2

# max = s.chomp.chars.max
# arr = s.chomp.chars
# max_arr = []
# s.chomp.chars.each_with_index do |str, i|
#   max_arr.push(arr(i, s.length/2)) if str == max
# end

# p array

# 模範回答
require 'byebug'
byebug

s = gets.chomp.split(//)
copy = s.dup

# aに全ての配列パターンを代入
a = s.length.times.map do
  copy << copy.shift #=> 最初の要素(copy[0])を最後に移動
  copy.join
end

sorted = a.sort
puts(sorted[0]) #=> 最小
puts(sorted[-1]) #=> 最大