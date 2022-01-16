# B - Climbing Takahashi
# 自分の回答 AC 7:03
n = gets.to_i
arr = gets.split.map(&:to_i)
res = 0

arr.each{|num| res < num ? res = num : break }
puts res