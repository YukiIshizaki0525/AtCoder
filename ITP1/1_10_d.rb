# Distance Ⅱ
# 自分の回答 WA 20:43

# n = gets.to_i
# x = gets.split.map(&:to_i)
# y = gets.split.map(&:to_i)

# def manhattan(a, b)
#   return manhattan += (a-b).abs
# end
# (0..n).each do |i|
#   a, b = x[i], y[i]
#   manhattan(a, b)
# end

# 模範回答
require 'byebug'
byebug
def dist(x, y, pp)
  result = 0
  if pp != 0
    # p = 1, 2, 3の時
    for i in 0...x.length
      result += (x[i] - y[i]).abs ** pp
    end
    result **= (1.0 / pp)
  else
    for j in 0...x.length
      # p = ∞
      result = (x[j] - y[j]).abs if (x[j] - y[j]).abs > result
    end
  end
  return result
end
gets
x, y = gets.split(" ").map(&:to_i), gets.split(" ").map(&:to_i)
# x = [1, 2, 3]
# y = [2, 0, 4]
4.times do |i|
  puts dist(x, y, (i + 1) % 4)
end