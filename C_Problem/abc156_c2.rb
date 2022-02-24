# C - Rally 2回目
# 自分の回答
# n = gets.to_i
# x = gets.split.map(&:to_i).uniq.sort
# tairyoku=0

# syukai_point = x.length.even? ? (x[x.length/2-1]+x[x.length/2])/2 : x[x.length/2]

# x.each{ |num| tairyoku += (num-syukai_point)**2 }
# puts tairyoku

# 模範回答
N = gets.to_i
X = gets.split.map &:to_i
min = X.min
max = X.max

require 'byebug'
byebug

ans = Float::INFINITY
(min..max).each do |pp|
  s = X.map{ |x| (x-pp) ** 2 }.sum #=> 「配列Xの各要素」と「配列Xの最小値から最大値まで」をそれぞれ引いて2乗した値を変数sに格納して、最小値を更新する
  ans = [ans, s].min #=> 最小値を更新
end
puts ans
