# s = gets.chomp.downcase
# s = s.split('')

# res = "No"

# (1..100).each do |i|
#   size = s.length / 2
#   if s[0..size] == s.reverse[0..size]
#     res = "Yes"
#     break
#   else
#     s.unshift!("a")
#   end
# end

# puts res

# 模範回答

S = gets.chomp
fc = bc = 0

require 'byebug'
byebug

S.each_char do |s|
  break if s != 'a'
  fc += 1
end

S.reverse.each_char do |s|
  break if s != 'a'
  bc += 1
end

s = 'a' * [0, bc - fc].max + S

if s == s.reverse
  puts 'Yes'
else
  puts 'No'
end
