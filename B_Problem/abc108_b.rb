# B - Ruined Square
# 自分の回答 WA 18:44
# x1, y1, x2, y2 = gets.split.map(&:to_i)
# a = (x1-x2).abs
# b = (y1-y2).abs
# x3, y3 = x2-b, y2-a
# x4, y4 = x3-a, y3-b

# puts "#{x3} #{y3} #{x4} #{y4}"

# 模範回答
x1,y1,x2,y2 = gets.chomp.split.map(&:to_i)

require 'byebug'
byebug

dx = x2 - x1 #=> dx = 4
dy = y2 - y1 #=> dy = 3

# (dx,dy)=(4,3)

x3 = x2 - dy #=> x3 = 3
y3 = y2 + dx #=> y3 = 10

# (6,6) => (-3,+4) => (3,10)

x4 = x3 - dx #=> x = -1
y4 = y3 - dy #=> y = 7

# (3,10) => (-4,-3) => (-1,7)

puts [x3,y3,x4,y4].join(" ")