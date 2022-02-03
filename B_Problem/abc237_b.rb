# B - Matrix Transposition
# 自分の回答
h, w = gets.split.map(&:to_i)

#=> a = Array.new(h) { gets.split.map(&:to_i) }という書き方もできる
arr = h.times.map{ gets.split.map(&:to_i) }.transpose

puts arr.map{|a| a.join(' ')}

# 模範回答
# 模範回答と同じ