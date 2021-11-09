# ABC225 C - Calendar Validator
# 自分の回答 回答時間 26:58 18/26 AC
# n, m = gets.split.map(&:to_i)
# array = []

# n.times do
#   array.push( gets.split.map(&:to_i) )
# end

# if array[1].sum - array[0].sum == 21
#   puts "Yes"
# else
#   puts "No"
# end

# 模範回答
require 'byebug'
byebug
n, m = gets.chomp.split(" ").map(&:to_i)

offset_i = nil
offset_j = nil
result = true

if n == 1 && m == 1
  puts "Yes"
  exit
end

b = []
n.times do |i|
  b << gets.chomp.split(" ").map(&:to_i).map{|e|e-1}
end

si = b[0][0] / 7
sj = b[0][0] % 7

if sj + m - 1 >= 7
  puts "No"
  exit
end

0.upto(n-1) do |i|
  0.upto(m-1) do |j|
    nb = (si + i) * 7 + (sj + j)
    if b[i][j] != nb
      puts "No"
      exit
    end
  end
end
puts "Yes"
