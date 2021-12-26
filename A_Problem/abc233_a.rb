# A - 10yen Stamp
# 自分の回答 4:01 AC
# x, y = gets.split.map(&:to_i)
# cnt = 0
# while x < y
#   cnt += 1
#   x += 10
# end

# puts cnt

# 模範回答
require 'byebug'
byebug
x, y = gets.split.map(&:to_i)
#  Y−X 円を支払うために、 10 円切手が何枚必要かを求める。これを求めるには、 Y−X を 10 で割って小数点以下を切り上げる必要がある
puts x >= y ? 0 : (y - x + 9) / 10
