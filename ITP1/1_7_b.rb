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

# k = x - i -jで計算量を少なくする
# while (n, x = gets.split.map(&:to_i)) != [0, 0]
#   (1..n).each do |i|
#     (1..n-1).each do |j|
#       k = x - i -j
#       cnt += 1 if j<k && n<=k
#     end
#   end
# end
# puts cnt

# 模範回答
# require 'byebug'
# byebug

# loop {
#   n, x = gets.split.map &:to_i
#   break if n == 0
#   p (1..n).to_a.combination(3).count{|a, b, c| a + b + c == x}
# }

