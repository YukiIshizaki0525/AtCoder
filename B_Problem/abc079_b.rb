# B - Lucas Number
# 自分の回答 AC 14:56
def lucas(n)
  return lucas_helper(2,1,n)
end

def lucas_helper(l1, l2, n)
  return l1 if n==0
  return lucas_helper(l2, l1+l2, n-1)

  # lucas_helper(2,1,5)
  # lucas_helper(1,3,4)
  # lucas_helper(3,4,3)
  # lucas_helper(4,7,2)
  # lucas_helper(7,11,1)
  # lucas_helper(11,18,0)
end

n = gets.to_i
require 'byebug'
byebug

puts lucas(n)

# 模範回答
# num = gets.chomp.to_i

# ary = Array.new(0)
# ary[0] = 2
# ary[1] = 1

# num.times do |n|
#   ary[n+2] = ary[n] + ary[n+1]
# end

# puts ary[num] #=> ary = [2, 1, 3, 4, 7, 11, 18]
