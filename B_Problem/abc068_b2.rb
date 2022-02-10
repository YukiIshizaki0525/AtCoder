# B - Break Number(2回目)
# 自分の回答 WA 13:19

# n = gets.to_i
# res = 0

# (1..n).each_with_index do |num|
#   cnt = 0
#   while num%2==0
#     cnt += 1
#     num /= 2
#   end
#   res = i+1 if res < cnt
# end

# puts res

# 模範回答
puts 1.upto(gets.to_i).max_by { |n|
  cnt = 0
    while n.even?
      cnt += 1
      n /= 2
    end
  cnt
}