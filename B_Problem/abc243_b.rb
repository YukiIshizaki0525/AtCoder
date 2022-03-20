# B - Hit and Blow
# 自分の回答 AC

# gets.to_i
# a = gets.split.map &:to_i
# b = gets.split.map &:to_i

# no_1 = [a,b].transpose.count{|a,b| a == b}
# puts no_1
# puts [a,b].flatten.tally.count{|k,v| v==2} - no_1

# 模範回答
N = gets.to_i
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)

n =  (0...N).count{|i| A[i] == B[i]} #別の配列のi番目の値と同じものがいくつあるかカウント
puts n
puts A.product(B).count{|a,b| a == b} - n
# A = [1,3,5,2], B = [2,3,1,4]
# => [[1, 2], [1, 3], [1, 1], [1, 4], [3, 2], [3, 3], [3, 1], [3, 4], [5, 2], [5, 3], [5, 1], [5, 4], [2, 2], [2, 3], [2, 1], [2, 4]]