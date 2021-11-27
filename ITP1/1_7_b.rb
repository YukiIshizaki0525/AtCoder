# How many ways?
# 自分の回答 WA 22:11

# count = 0
# while (n, x = gets.split.map(&:to_i)) != [0, 0]
#   (1..n).each do |i|
#     (1..n).each do |j|
#       (1..n).each do |k|
#         if i+j+k == x
#           p [i, j, k].combination(3).to_a
#         end
#       end
#     end
#   end
# end

# puts count

# 模範回答
require 'byebug'

byebug
loop {
  n, x = gets.split.map &:to_i
  break if n == 0
  p (1..n).to_a.combination(3).count{|a, b, c| a + b + c == x}
}