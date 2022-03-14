# C - 1111gal password
# 自分の回答
# n = gets.to_i
# start = ("1"+"0"*(n-1)).to_i
# finish = (("1"+"0"*n).to_i)-1
# arr = [*start..finish]
# count = 0

# arr.each do |num|
#   num = num.to_s
#   flag = true
#   (n-1).times do |i|
#     if (num[i].to_i - num[i+1].to_i).abs > 1
#       flag = false
#       break
#     end
#   end

#   count += 1 if flag
# end

# puts 998244353%count

# 模範回答
n = gets.to_i

require 'byebug'
byebug

a = [1]*9 + [0] #=> a = [1, 1, 1, 1, 1, 1, 1, 1, 1, 0]
(n - 1).times do
  before_v = 0
  9.times do |i|
    tmp = a[i] #=> tmp=1,
    a[i] += before_v #=> a[1]+=before_v(1)(a[1]=2),
    a[i] += a[i + 1] #=> a[0]+=a[1](a[0]=2),..a[2]+=a[3](a[2]=3),
    a[i] %= 998244353
    before_v = tmp
  end
end
p a.sum % 998244353 #=> a = [14, 24, 29, 29, 28, 27, 26, 22, 13, 0]