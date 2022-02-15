# C - Calendar Validator 2回目
# 自分の回答
# n, m = gets.split.map &:to_i
# arr = n.times.map{ gets.split.map &:to_i}
# res = "Yes"

# arr.each.with_index(1) do |a, i|
#   a.each.with_index(1) do |num, j|
#     if (i-1)*7+j != num
#       res = "No"
#       break
#     end
#   end
# end

# puts res

# 模範回答
n, m = gets.split.map &:to_i
ary = n.times.map{ gets.split.map &:to_i}

require 'byebug'
byebug

x = ary[0][0] #=> x = 1

ans = 'Yes'
n.times do |i|
  m.times do |j|
    if ary[i][j] != x+7*i+j || ary[i][j]%7==1 && j!=0
      ans = 'No'
      break
    end
  end
end
puts ans
