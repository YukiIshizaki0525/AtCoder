# A - Last Card
# 自分の回答
# n, k, a = gets.split.map(&:to_i)

# array = []
# 1..a
# a.updo(n)
# loop do
#   array.push(a)
#   (1..a)
# end

# 模範回答
require 'byebug'

byebug
n, k, a = gets.split.map(&:to_i)
(k-1).times do
  a += 1
  a = 1 if a == n + 1
end

p a