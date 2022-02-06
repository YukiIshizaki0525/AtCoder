# C - digitnum

# 模範回答
# 参考解説
# https://atcoder.jp/contests/abc238/editorial/3350
require 'byebug'
byebug

N = gets.to_i #=>16

# 桁数
sl = N.to_s.length #=> 2

sum = 0
sl.times do |i|
  k = [9*(10**i),(N-(10 ** i)+1)].min #=> 9*(10**i)=>9,90~ (N-(10 ** i)+1)=>16,7 ~
  sum += k * (k+1) / 2 #=> 1からnの総和
end

p sum % 998244353
