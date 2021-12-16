# B - Takahashi's Secret 2回目 WA15:00
# 自分の回答
# 友達12 => 友達A12(5)
# 友達5 => 友達A5(7)
# 友達7 => 友達A7(14)
# 友達14 => 友達A14(20)
# 友達20 => 友達A20(10)
# 友達10 => 友達A10(3)
# 友達3 => 友達A3(10)

# n, x = get.split.map(&:to_i)
# array = get.split.map(&:to_i)
# i = 0
# while 
#   x = array[x].delete
# end

#  模範回答
require 'byebug'
byebug
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

next_u_arr = []
next_u_arr << a[1] # 初期値

# 最大20人に広まるから20回繰り返し
a[0].times do
  # 別に入っている最後の友人が次の人に広める、iは1からなので-1、b[next_u_arr.last - 1]
  next_u_arr << b[next_u_arr.last - 1]
end

# 20回以内に収まるかもしれないため秘密を知っている人の配列のユニーク要素を取る
puts next_u_arr.uniq.count

