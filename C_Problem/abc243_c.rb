# C - Collision 2
# n = gets.to_i
# ary = n.times.map{ gets.split.map &:to_i }
# s = gets.chomp
# res = "No"

# ary.each.with_index{ |a, i| a.unshift(s[i]) }
# ary = ary.group_by(&:last).delete_if{|a,b| b.count==1}.values

# ary.each do |a|
#   a.each do |ar|
#     p ar
#   end
# end

# 模範回答
N = gets.to_i #=> 3
Z = N.times.map{gets.split.map(&:to_i)} #=> [[2, 3], [1, 1], [4, 1]]
S = gets.chomp.chars #=> ["R", "R", "L"]

require 'byebug'
byebug

right = Hash.new(10**10)
left = Hash.new(-1)

(0...N).each do |i|
  x = Z[i][0] #=>x=2, x=1, x=4
  y = Z[i][1] #=>y=3, y=1, y=1

  if S[i] == 'R'
    right[y] = [right[y], x].min
    #=>right[3](10000000000)とx(2)の比較 => right[3]=2
    #=>right[1](10000000000)とx(1)の比較 => right[1]=1
    #=>right[1](10000000000)とx(1)の比較 => right[1]=4
  else
    left[y] = [left[y],x].max #=> left[y](-1)とx(4)の比較=>left[y]=4
  end

  if right[y] < left[y]
    puts 'Yes'
    exit
  end
end

puts 'No'
