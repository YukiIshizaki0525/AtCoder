#Matrix Vector Multiplication
# 自分の回答 34:02 AC
require 'byebug'
n, m = gets.split.map(&:to_i)
all_array = []
n.times do
  array = gets.split.map(&:to_i)
  all_array.push(array)
end

b = []
m.times do
  bi = gets.to_i
  b.push(bi)
end

all_array.each do |row|
  (0..m-1).each {|i| row[i] = row[i] * b[i] }
end

all_array.each{ |row| puts row.sum }

# 模範回答
# matrixの参考：https://runebook.dev/ja/docs/ruby/matrix
require 'matrix'
byebug
n, m = gets.split.map &:to_i
a = Matrix[*(1..n).map{ gets.split.map &:to_i }] #=> Matrix[[1, 2, 0, 1], [0, 3, 0, 1], [4, 1, 1, 0]]
v = Vector[*(1..m).map{ gets.to_i }] #=> Vector[1, 2, 3, 0]
puts (a * v).to_a