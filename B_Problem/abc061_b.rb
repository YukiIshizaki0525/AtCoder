# B - Counting Roads
# 自分の回答 WA 20:41

# 1番目の道路は都市a1,都市b1=> 都市1と都市2 => {1: [1,2]} => [1,1][2,1]
# 2番目の道路は都市a2,都市b2=> 都市2と都市3 => {2: [2,3]} => [2,2][3,2]
# 3番目の道路は都市a3,都市b3=> 都市1と都市4 => {3: [1,4]} => [1,3][4,1]

# n,m = gets.split.map &:to_i
# ary = m.times.map{|i| a,b = gets.split.map &:to_i; [i+1,a,b]}

# res_ary = []
# ary.each do |a|
#   res_ary.push([a[1],a[0]])
#   res_ary.push([a[2],a[0]])
# end

# p res_ary

# 模範回答
N, M = gets.chomp.split(' ').map(&:to_i)
arr = []
M.times do |i|
  arr << gets.chomp.split(' ').map(&:to_i) #=> arr = [[1, 2], [2, 3], [1, 4]]
end

for i in 1..N
  puts arr.flatten.count(i) #=> [1, 2, 2, 3, 1, 4]
end