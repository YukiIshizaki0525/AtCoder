# Mongeness 2回目
# h, w = gets.split.map(&:to_i)
# flg = "Yes"
# array = []
# h.times { array.push(gets.split.map(&:to_i)) }

# h.times do
#   for i in 0..h-1 do
#     for j in 0..w-1 do
#       if array[i][j] + array[i+1][j+1] <= array[i+1][j] + array[i][j+1]
#         flg = "No"
#         break
#       end
#     end
#   end
# end

# puts flg

# 模範回答
require 'byebug'
byebug

h, w = gets.chomp.split(" ").map(&:to_i)
arrays = []

h.times do |i|
  arrays[i] = gets.chomp.split(" ").map(&:to_i)
end
# arrays = [[2, 1, 4], [3, 1, 3], [6, 4, 1]]
judge = true

# インデックス番号の最大値は2のためh-1回とw-1回の二重ループ
(h - 1).times do |i|
  (w - 1).times do |j|
    unless arrays[i][j] + arrays[i + 1][j + 1] <= arrays[i + 1][j] + arrays[i][j + 1]
      judge = false
    end
  end
end

puts judge ? 'Yes' : 'No'
