# Chocolate
# 自分の回答 16:22 AC
# n = gets.to_i
# d, x = gets.split.map &:to_i
# i = 0
# res = []
# cnt = 0

# n.times do
#   arr = []
#   a = gets.to_i
#   while a*i+1 <= d
#     arr.push(a*i+1)
#     i += 1
#   end
#   i = 0
#   res.push(arr)
# end

# res.each{|arr| cnt += arr.count}
# puts cnt + x

# 模範回答
n = gets.to_i
d, x = gets.split.map(&:to_i)

a = n.times.map{ gets.to_i }
#=> この記述で各行一つの入力値を一つの配列に入れられる

ans = n #=> ans=3

# ここまで
# a = [2, 5, 10]
# ans = 3
# d = 7
# n = 3
# x = 1

require 'byebug'
byebug

a.each do |e|
  u = d
  while u - e > 0
    u -= e
    ans += 1 # ans=6(3人参加で1日目は必ず食べるからあらかじめ3日分加算。
    # 1日目以外で3,5,7,日目の3日分)、ans=7(1日目以外で6日目の1日分)
  end
end
puts ans + x