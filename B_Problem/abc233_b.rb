# B - A Reverse
# 自分の回答 16:37
l, r = gets.split.map(&:to_i)
s = gets.chomp.chars
l -= 1
r -= 1

s[l..r] = s.slice(l..r).reverse
puts s.join

# 模範回答
l,r = gets.chomp.split(' ').map(&:to_i)
s = gets.chomp

s[l-1...r] = s[l-1...r].reverse
puts s