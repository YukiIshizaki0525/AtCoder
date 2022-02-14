# C - Exception Handling
# 自分の回答 WA 22:04
# n = gets.to_i
# a = n.times.map{ gets.to_i }
# a.each do |num|
#   puts a.select{|i| i != num}.any? ? a.select{|i| i != num}.max : a.max
# end

# [1,3,4]
# 1 => [3,4] => 4
# 4 => [1,3] => 3
# 3 => [1,4] => 4

# [5,5]
# 5 => [ ] => " "
# 5 => [ ] => " "

# 模範回答
N = gets.to_i
A = N.times.map{ gets.to_i }

require 'byebug'
byebug

sa = A.sort.reverse #=> sa = [4, 3, 1]
b1 = sa[0] #=> b1 = 4
b2 = sa[1] #=> b2 = 3

A.each do |a|
  puts (a != b1 ? b1 : b2) #=> 1と4、4と4、3と4
end