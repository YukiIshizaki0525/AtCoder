# B - AtCoder Market 2回目
# 自分の回答
# n = gets.to_i
# n.times do
#   a,b = gets.split.map(&:to_i)
#   puts (a-b).abs
# end

# 2,3,4,5,6,7,8,9,10
# arr = [1,13,14,35,43,54,64,71,79,85].sort
# p arr.size % 2 == 0 ? arr[arr.size/2-1, 2].inject(:+)/2.0 : arr[arr.size/2]

# 模範回答
n = gets.to_i
customers = []
n.times.each {|i| customers << gets.split(" ").map(&:to_i) } #=> customers = [[5, 7], [2, 6], [8, 10]]
a_customers = customers.map { |customer| customer[0] } #=> a_customers = [5, 2, 8]
b_customers = customers.map { |customer| customer[1] } #=> b_customers = [7, 6, 10]

start = a_customers.sort[n / 2] #=> Aの中央値
goal = b_customers.sort[n / 2] #=> Bの中央値
ans = 0

# ここまでの状態
# a_customers = [5, 2, 8]
# ans = 0
# b_customers = [7, 6, 10]
# customers = [[5, 7], [2, 6], [8, 10]]
# goal = 7
# n = 3
# start = 5

# この時点で、「すべての買い物客の移動時間の合計」の最小値を取れる
a_customers.each {|a| ans += (a - start).abs } #=> Aの商品群それぞれの入り口(start)の距離の和
customers.each {|c| ans += (c[0] - c[1]).abs } #=> 商品Aと商品Bの距離の和
b_customers.each {|b| ans += (b - goal).abs } #=> Bの商品群それぞれの出口(goal)の距離の和


puts ans