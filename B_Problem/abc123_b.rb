# B - Five Dishes
# 自分の回答 未回答 15:38
# arr = 
# order = [10,20,30,40,50,60,70,80,90,100,110,120,130]

# 29 - 30 = 1
# 20 - 20 = 0
# 7 - 10 = 3
# 35 - 40 = 5
# 120 - 120 = 0

# 101 - 110 = -9
# 86 - 90 = -4
# 119 - 120 = -1
# 108 - 110 = 2
# 57 - 60 = 3
# p arr

# 模範回答
# 解説参考
# https://qiita.com/hkrutknouch/items/ca2220127c4290c9f073
a = gets.to_i
b = gets.to_i
c = gets.to_i
d = gets.to_i
e = gets.to_i
time = 0
hasuu = []

require 'byebug'
byebug

[a,b,c,d,e].each{|i|
  time += i/10 * 10 #=> 20+20+30+120
  hasuu << i%10 if i%10 != 0 #=> 10で割った剰余が0でなければ1の位が繰り上げられる
} #hasuu = [9, 7, 5]、time = 190
if hasuu.empty?
  puts time
else
  puts time + (hasuu.size-1)*10 + hasuu.min
end