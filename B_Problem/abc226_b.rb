# B - Counting Arrays
# 自分の回答 31:33 AC
require 'byebug'

byebug
n = gets.to_i

total_arr = []
n.times do
  num = gets.split.map(&:to_i)
  array = []
  (1..num[0]).each do |i|
    array.push(num[i])
  end
  total_arr.push(array)
end

puts total_arr.uniq.length

# 模範回答
byebug
n = gets.to_i
cnt = Hash.new(0)
n.times do
  l, *a = gets.chomp.split.map(&:to_i)
  cnt[a.hash] += 1
end
puts cnt.size

