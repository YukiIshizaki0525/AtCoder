# C - Cheese 2回目
# 自分の回答
# 美味しさ3、1g
# 美味しさ4、2g
# 美味しさ2、3g
# チーズの総量5gまで

# n,w = gets.split.map &:to_i
# arr = n.times.map{ gets.split.map &:to_i}.sort.reverse

# deli_cnt = 0
# weight_cnt = 0

# arr.each do |a,b|
#   if w < b + weight_cnt
#     deli_cnt += a * (w - weight_cnt)
#     weight_cnt += b
#   else
#     weight_cnt <= w
#     deli_cnt += a * b
#     weight_cnt += b
#   end

#   break if weight_cnt == w
# end

# puts deli_cnt

# 模範回答
n, w = gets.split.map(&:to_i)
abs = Array.new(n) { gets.split.map(&:to_i) }.sort.reverse

require 'byebug'
byebug

added = 0
abs.each do |a, b|
  use = (b < w) ? b : w #=> 使える量とチーズの重さ比較、使える量よりも多い場合は、使える量の方を指定する
  w -= use #=> 使える量5gから2gをひいて、残り使える量を3gに更新、上記で使える量を指定しているので、最終的に使える量が0になる

  added += use * a
  break if w.zero? #=> 残り使える量が0gであれば抜ける
end

puts added