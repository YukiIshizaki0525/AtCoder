# C - Traveling Salesman around Lake
# 自分の回答 WA 19:52
# k, n = gets.split.map(&:to_i)
# a = gets.split.map(&:to_i)

# mid = (a.max + a.min) / 2
# start = a.min_by {|num| (num - mid).abs }

# p start

# 模範回答
require 'byebug'
byebug

k,n = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
a_sort = a.sort()
m = k - a_sort[-1] + a_sort[0]
(n-1).times do|i|
  m = [m,a[i+1]-a[i]].max #=> 最も長い距離を出す
  #=> [5,5].max
  #=> [5,10].max
end
puts k-m #=>最短距離は、池の周りの長さから最も長い距離を引いた長さ

