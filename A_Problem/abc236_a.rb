# A - chukodai
# 自分の回答 AC
s = gets.chomp
a,b = gets.split.map(&:to_i)
a -= 1
b -= 1

str_a = s[a]
str_b = s[b]

s[a] = str_b
s[b] = str_a

puts s