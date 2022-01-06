# B - Can you solve this?
# 自分の回答 12:22 AC

n, m, c = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
cnt = 0

n.times do
  a = gets.split.map(&:to_i)
  array = []
  a.zip(b) { |i, j|array.push(i * j) }
  cnt += 1 if array.sum + c > 0
end

puts cnt

# 模範回答
# require 'byebug'
# byebug

N, M, C = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)

puts readlines.count { |l|
  a = l.split.map(&:to_i)
  a.zip(B).map { |_a, _b| _a * _b }.sum + C > 0
}