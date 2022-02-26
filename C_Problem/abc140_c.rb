# C - Maximal Value
# 自分の回答
# n = gets.to_i
# b = gets.split.map(&:to_i).sort
# a = []

# b.each do |num|
#   count = b.count(num)
#   if a.length < n
#     (count+1).times { a.push(num) }
#   else
#     break
#   end
# end

# (a.length-n).times { a.pop }
# puts a.sum

# 模範回答
# n = gets.to_i
# b = gets.split.map(&:to_i)

# b.unshift(b[0]) #=> b = [0, 0, 153, 10, 10, 23]
# sum = b[-1]
# (n-1).times{|i|
#   sum += [b[i],b[i+1]].min
#   #=> [0, 0].min, [0,153].min, [153,10].min, [10,10].min, [10,23].min
# }
# puts sum

n = gets.to_i
bb = gets.split.map(&:to_i)

bb.unshift(bb[0])
bb.push(bb[-1])

sum = 0
1.upto(n) do |i|
  sum += [bb[i-1],bb[i]].min
end
puts sum
