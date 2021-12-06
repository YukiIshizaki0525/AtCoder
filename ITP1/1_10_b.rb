# Triangle
# 自分の回答 WA 21:06

# a2 = b2+c2 - 2bc*cosA
# include Math
# num = gets.split.map(&:to_f)
# cos = cos(num[2])

# a = num[0]**2 + num[1]**2 - 2 * num[0] * num[1] * cos
# menseki = 
# puts cos

# 模範回答

require 'byebug'
byebug

include Math
def f(a, b, c)
  # 面積 S、周の長さ L, a を底辺としたときの高さ h
  return (0.5 * a * b * sin(g(c))), (a ** 2 + b ** 2 - 2 * a * b * cos(g(c))) ** 0.5 + a + b, b * sin(g(c))
end
def g(c)
  return c * PI / 180 #=> ラジアンへの変換
end
puts f(*gets.split(" ").map(&:to_i)) #=> a = 4 b = 3 c = 90など
#f(*gets.split(" ").map(&:to_i)).each{|i|puts sprintf("%.4f", i)}