# C - Count Order
# 自分の回答 AC 11:53
# 参考サイト
# https://qiita.com/shshimamo/items/5a458ecc88e7c24d5112

# 配列の中にある要素の位置を取得する方法
# https://mi-chan-nel.com/ruby-index-method/

# n = gets.to_i
# P = gets.split.map &:to_i
# Q = gets.split.map &:to_i

# permutation = [*1..n].permutation(n).to_a
# a = permutation.index(P) + 1
# b = permutation.index(Q) + 1

# puts (a - b).abs

# 模範回答
n = gets.to_i
p = gets.split.map(&:to_i)
q = gets.split.map(&:to_i)
ar = (1..n).to_a
a = nil
b = nil

require 'byebug'
byebug

i = 1

ar.permutation do |pat|
  a = i if pat == p
  b = i if pat == q
  i += 1
end
puts (a-b).abs
