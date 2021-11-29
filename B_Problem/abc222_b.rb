# B - Failing Grade
# 自分の回答 19:07 AC
require 'byebug'
byebug
# n, p = gets.split.map(&:to_i)
# puts gets.split.map(&:to_i).select{|i| i < p}.count

# 模範回答
# split(' ')[1]で2つ目に入力したものだけを取得

p = gets.split(' ')[1]; p gets.split(' ').select {|n|n.to_i<p.to_i}.size