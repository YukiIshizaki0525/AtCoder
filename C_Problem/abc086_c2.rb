# C - Traveling 2回目
# 自分の回答 WA 24:56

n = gets.to_i
pre,x,y = 0,0,0
res = "Yes"
n.times do
  ne,a,b = gets.split.map &:to_i
  if (x-a)+(b-y) > (ne-pre)
    res = "No"
    break
  end
  pre = ne
  x,y = a,b
end

puts res

# # 模範回答
# n = gets.to_i
# data = n.times.map { gets.strip.split.map(&:to_i) } #=> data = [[3, 1, 2], [6, 1, 1]]

# require 'byebug'
# byebug

# def is_reachable(current, next_data)
#     # 次の地点までのマンハッタン距離
#     tc, xc, yc = current
#     tn, xn, yn = next_data
#     dist = (xc - xn).abs + (yc - yn).abs

# 		# 距離 > 次の時間 - 今の時間
#     return false if dist > tn - tc

#     # 行ったり来たりでちょうど到着できるか
#     # 3 1 2
#     # 6 1 1

#     # dist = (1-1).abs+(2-1).abs = 1
#     # 1-(6 - 3) = -2 偶数のためtrue
#     (dist - (tn - tc)).even?
# end

# current = [0, 0, 0]
# data.each do |d|
#     unless is_reachable(current, d)
#         puts 'No'
#         exit 0
#     end
#     current = d
# end

# puts 'Yes'