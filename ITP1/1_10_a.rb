# distance
# 自分の回答 AC 10:35

include Math

num = gets.split.map(&:to_f)
dis = (num[0]-num[2]) ** 2 + (num[1]-num[3]) ** 2
puts Math.sqrt(dis)