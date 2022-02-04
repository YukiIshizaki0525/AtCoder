# B - Trained? (2回目)
# 自分の回答

# 3,1,2
# a1,a2,a3
# ボタン1(a2)が光っている=>ボタン1が消えて、ボタンa1がつく
# ボタン3が光っている=>ボタン3が消えてボタンa3がつく

# 3,4,1,2
# ボタン1が消えてボタンa1がつく
# ボタン3が消えてボタンa3がつく
# 33424
# ボタンa1(3)がつく
# ボタンa3(4)がつく
# ボタンa4(2)がつく

# n = gets.to_i
# a = n.times.map{ gets.to_i }
# start = a.index{|v| v == 1}

# a[start+1]
# (1..100).each do |i|

# end

# 模範回答
N = gets.to_i
arr = Array.new(N) { gets.to_i }

cnt = 0
index = 0

require 'byebug'
byebug

N.times do |i|
  if index == 1
    puts cnt
    exit
  end
  index = arr[index]-1 #=> index=2, 1の繰り返し
  cnt += 1
end
puts -1