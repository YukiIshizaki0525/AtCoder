# B - Nice Shopping
# 自分の回答 WA 18:17
A,B,M = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
discount = M.times.map{ gets.split.map(&:to_i) }

min_set = a.min + b.min
discount_set = 0
res = 0

discount.each do |arr|
  discount_set = a[arr[0]-1] + b[arr[1]-1] - arr[2]
  res = [min_set, discount_set].min
end

puts res

# 模範回答
A, B, M	= gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
ans = a.min + b.min
M.times	do
  x, y,	c = gets.split.map(&:to_i)
  ans =	[ans, a[x - 1] + b[y - 1] - c].min
end
puts ans