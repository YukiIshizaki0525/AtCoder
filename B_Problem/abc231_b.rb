# Election
# n = gets.to_i
# a = []
# n.times do |i|
#   s = gets
#   a.push(s)
# end

# p a.group_by(&:itself).map{ |key value| [key, value.count] }.to_h

# 模範回答
require 'byebug'
byebug

n = gets.to_i
h = Hash.new(0)
n.times do
  s = gets.chomp
  h[s] += 1 #=> h = {"takahashi"=>3, "aoki"=>1, "snuke"=>1}
end

puts h.to_a.max_by(&:last).first
# to_aメソッドを使うことで二次元配列になる [["takahashi", 3], ["aoki", 1], ["snuke", 1]]
# max比較演算子を使うが、max_byは比較したい式のみを記載
# max_by(&:last).firstで要素の最大値(配列)を取ってその配列の最初の値を取る
