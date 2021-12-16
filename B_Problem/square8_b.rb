# 全探索のアルゴリズム(パターン B. 探索の通り数を絞り込む)の類題
# 参照元:https://qiita.com/e869120/items/25cb52ba47be0fd418d6#2-%E3%81%99%E3%81%B9%E3%81%A6%E3%81%AE%E5%9F%BA%E6%9C%AC%E5%85%A8%E6%8E%A2%E7%B4%A2

# B - AtCoder Market
# 自分の回答
# n = gets.to_i
# iriguchi = 0
# deguchi = 0
# time = 0
# (1..n).each do |i|
#   a, b = gets.split.map(&:to_i)
#   iriguchi = a, deguchi = b if i == 1

#   if iriguchi > a || 

#   elsif iriguchi < a

#   else

#   end
# end

# 模範回答
# 解説参考：https://ryusuke920.hatenablog.jp/entry/2020/11/11/232855
# 絶対値の和を最小にしたい問題、絶対値の総和が最小になるのは中央値

# ポイント：|a−Ai| と |b−Bi| をそれぞれ最小にしたい=>A, Bの中央値を持ってくることで最小化
require 'byebug'
byebug

n = gets.to_i
customers = []
n.times.each {|i| customers << gets.split(" ").map(&:to_i) } #=> customers = [[5, 7], [2, 6], [8, 10]]
a_customers = customers.map { |customer| customer[0] } #=> a_customers = [5, 2, 8]
b_customers = customers.map { |customer| customer[1] } #=> b_customers = [7, 6, 10]

start = a_customers.sort[n / 2] #=> Aの中央値
goal = b_customers.sort[n / 2] #=> Bの中央値

ans = 0


#=> ans = ∑i=1n|a−Ai|+|Ai−Bi|+|b−Bi|
a_customers.each {|a| ans += (a - start).abs } #=>入り口からの距離
customers.each {|c| ans += (c[0] - c[1]).abs } #=> 入り口から出口の距離
b_customers.each {|b| ans += (b - goal).abs } #=>出口からの距離

puts ans


