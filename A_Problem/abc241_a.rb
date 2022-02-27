# A - Digit Machine
# 自分の回答 AC 07:12

a = gets.split.map &:to_i
current = 0
3.times { current = a[current] }

puts current
