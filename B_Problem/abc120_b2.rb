# B - K-th Common Divisor(2回目)

# 自分の回答 WA
# a,b,k = gets.split.map &:to_i
# arr = []
# (1..100).each {|i| arr.push(i) if a % i == 0 || b % i == 0 }
# puts arr[k-1]


# 模範回答
A, B, K = gets.split.map(&:to_i)
ds = (1 .. A * B).filter { |x| A % x == 0 and B % x == 0 }
puts ds[-K]
# puts ds[K-1] にしてしまうとWAになる
