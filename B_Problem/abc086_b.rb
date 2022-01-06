# B - 1 21
# 自分の回答 11:17 AC

# num = gets.split.map(&:to_i).join.to_i
# res = "No"
# i = 1
# j = 1
# loop do
#   res = "Yes" if i * j == num
#   break if i * j > num
#   i += 1
#   j += 1
# end

# puts res

# 模範回答
require 'byebug'
byebug

a, b = gets.split.map(&:to_i)
n = "#{a}#{b}".to_i

if n == Integer.sqrt(n)**2
  puts 'Yes'
else
  puts 'No'
end