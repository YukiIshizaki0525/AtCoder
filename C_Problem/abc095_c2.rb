# C - Half and Half
# 自分の回答 AC 16:09
a,b,c,x,y = gets.split.map &:to_i

a_and_b = a * x + b * y

a_and_b_and_c = c * 2 * [x,y].min
x > y ? a_and_b_and_c += a * (x-y) : a_and_b_and_c += b * (y-x)

c_only = c * 2 * [x,y].max

puts [a_and_b, a_and_b_and_c, c_only].min
