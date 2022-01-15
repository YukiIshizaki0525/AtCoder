# B - Break Number
# 自分の回答

# n = gets.to_i
# cnt = 0

# 1.upto(n) do |num|
#   cnt = 0
#   while num.odd? && num != 0
#     cnt += 1
#     num /= 2
#   end
#   result = cnt if result < cnt
# end

# puts result

# 模範回答
require 'byebug'
byebug

puts 1.upto(gets.to_i).max_by { |n|
  cnt = 0
  while n.even?
    cnt += 1
    n /= 2
  end

  cnt
}
