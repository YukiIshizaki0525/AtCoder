# B - Not Found
# 自分の回答 AC 05:22
# alpha = [*'a'..'z']
# s = gets.chomp.split("")

# s.each { |str| alpha.delete(str) }
# puts alpha.empty? ? "None" : alpha[0]

# 模範回答
# require 'byebug'
# byebug

# ("a".."z").to_a.join("") => abcdefghijklmnopqrstuvwxyz
s = ("a".."z").to_a.join("").delete(gets) #=>s = bfhijkmpqvwxyz
puts s.empty? ? "None" : s[0]
