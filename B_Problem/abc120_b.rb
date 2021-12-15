# K-th Common Divisor

# 約数を求める=>http://moefeather.net/programming/2790/
# 引数numの約数を求めて配列に入れる
# def divisor(num)
#     arrbox = []

#     for i in 1..(num / 2)
#       if num % i == 0
#         arrbox.push(i)
#       end
#     end

#     arrbox.push(num)
#     return arrbox
# end

# a, b, k = gets.split.map(&:to_i)
# arr = divisor(a) & divisor(b)
# puts arr[-k]

# 模範回答
require 'byebug'
byebug

A, B, K = gets.split.map(&:to_i)
ds = (1 .. A * B).filter { |x| A % x == 0 and B % x == 0 }
puts ds[-K]