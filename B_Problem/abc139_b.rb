# B - Power Socket

# a, b = gets.split.map(&:to_i)
# i = 0
# cnt = 0
# loop do
#   break if a > b
#   cnt += 1
#   i += 1
#   a = a * i
#   break if b <= a
# end
# puts cnt

# 模範回答
require 'byebug'
byebug

A, B = gets.split.map(&:to_i)
ans, input = 0, 1
while input < B
  input += (A - 1) #=> A個口の電源タップは新たにA個口増やすとき差込口を一つ使うため、差し込み口の総数はA-1になる
  ans += 1
end

puts ans