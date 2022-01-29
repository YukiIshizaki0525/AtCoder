# C - Next Prime
# 自分の回答 WA

# require 'prime'
# x = gets.to_i
# arr = Prime.each(x).to_a
# arr
# p arr

# 模範回答
require 'prime'
x = gets.to_i

prime = Prime.each(10**6).to_a
ans = prime.bsearch{|bs| bs >= x}
puts ans
