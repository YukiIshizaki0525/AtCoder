# Card Game for Two 2回目
# n = gets.to_i
# a = gets.split.map(&:to_i)
# alice = []
# bob = []
# loop do
#   alice.push(a.max)
#   a.delete(a.max)
#   break if a.count == 0

#   bob.push(a.max)
#   a.delete(a.max)
#   break if a.count == 0
# end

# puts alice.sum - bob.sum

# 模範回答
require 'byebug'
byebug

_n = gets.to_i
as = gets.strip.split.map(&:to_i).sort.reverse  #=> 降順でソート、as = [20, 18, 18, 2]

alice = 0
bob = 0

until as.empty? do
  alice += as.shift #=>shiftで先頭から1要素をaliceに追加
  break if as.empty?
  bob += as.shift #=>shiftで先頭から1要素をbobに追加
end

puts (alice - bob)