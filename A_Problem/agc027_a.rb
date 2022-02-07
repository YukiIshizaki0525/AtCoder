# A - Candy Distribution Again
# 自分の回答 WA 20:59
# n, x = gets.split.map &:to_i
# a = gets.split.map(&:to_i)
# cnt = 0
# (n-1).times do |i|
#   if x - a[i] > 0
#     x -= a[i]
#     cnt += 1
#   end
# end
# cnt += 1 if x == a[a.length-1]
# puts cnt

# 模範回答
N, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort

cnt = 0
N.times do |i|
  x -= a[i]
  break if x < 0
  cnt += 1
end

cnt -= 1 if x > 0

puts cnt
