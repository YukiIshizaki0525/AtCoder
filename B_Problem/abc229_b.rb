# Hard Calculation
# 自分の回答 46:29 AC
require 'byebug'
byebug
# a, b = gets.split

# a = a.split("").map(&:to_i)
# b = b.split("").map(&:to_i)

# if a.length > b.length
#   (a.length - b.length).times do
#     b.unshift(0)
#   end
# else
#   (b.length - a.length).times do
#     a.unshift(0)
#   end
# end

# arr = []
# a.zip(b).each{ |i| arr << i.sum }
# puts arr.select{|i| i >= 10}.count >= 1 ? "Hard" : "Easy"

# 模範回答
# 使用するアルゴリズム
A を 10 で割った余りと B を 10 で割った余りの和を求める。これが 10 以上であれば、繰り上がりが発生するので Hard と出力して終了する。
A,B それぞれを 10 で割る。(小数点以下は切り捨てる。)
1,2 の操作を続け、A,B どちらかが 0 になっても繰り上がりが検出されなければ、繰り上がりは発生しないので Easy と出力して終了する。

a, b = gets.split.map(&:to_i)
while a > 0 && b > 0
  if a % 10 + b % 10 > 9
    puts "Hard"
    exit
  end
  a /= 10
  b /= 10
end
puts "Easy"
