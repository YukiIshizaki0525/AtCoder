# B - Toll Gates
# 自分の回答 AC 20:19
# 0,"1","2",3,"4",5
# 0,"1","2","3","4",5,"6",7,"8","9"

# n,m,x = gets.split.map(&:to_i)
# a = gets.split.map(&:to_i)

# hash = {}
# (n+1).times{|i| a.include?(i) ? hash[i] = 1 : hash[i] = 0}
# # hash = {0=>0, 1=>1, 2=>1, 3=>0, 4=>1, 5=>0}

# left = {}
# right = {}

# hash.each {|k, v| k <= x ? left[k] = v : right[k] = v }
# # left = {0=>0, 1=>1, 2=>1, 3=>0}, right = {4=>1, 5=>0}
# puts [left.count{|k, v| v == 1}, right.count{|k, v| v == 1}].min

# 模範回答
require 'byebug'
byebug
# 求めるコストは X から 0 までにある料金所の数と，
# X から N までにある料金所の数のうち小さい方

_, m, x = gets.split.map &:to_i
a = gets.split.map &:to_i
b = a.count {_1 < x}
# _1はNumbered parameterという。明示的に引数を指定するのではなくブロックの仮引数
# 解説
# https://qiita.com/jnchito/items/79f0172e60f237e2c542

p [b , m-b].min