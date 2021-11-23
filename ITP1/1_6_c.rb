# Official House
# 自分の回答 32:09 WA
# 不明点：入居者が居ない棟をどう出力するか、棟の数がずれると正常に入居者を更新できない
require 'byebug'

n = gets.to_i
(1..n).each do |i|
  b, f, r, v = gets.split.map(&:to_i)
  array = []
  3.times {array.push("0"*10) }
  array[f-1][r-1] = v.to_s b == i
  array.each {|floar| puts floar }
  puts "####################"
end

# 模範回答
byebug
h = Array.new(4){ Array.new(3){ Array.new(10,0) } } #=> １フロア１０部屋、３階建ての公舎４棟
n = gets.to_i
n.times do
  a,b,c,d = gets.split.map(&:to_i)
  h[a-1][b-1][c-1] += d
end

for i in 0...4
  puts "#"*20 if i>0
  for j in 0...3
    puts " "+h[i][j].join(" ") #=> "0 0 8 0 0 0 0 0 0 0"
  end
end