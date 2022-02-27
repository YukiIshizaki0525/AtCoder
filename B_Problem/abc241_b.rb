# B - Pasta
# 自分の回答 AC 12:10

# n,m = gets.split.map &:to_i
# a = gets.split.map &:to_i
# b = gets.split.map &:to_i
# res = "Yes"
# m.times do |i|
#   if(a.include?(b[i]))
#     index = a.find_index(b[i])
#     a.delete_at(index)
#   else
#     res = "No"
#     break
#   end
# end

# puts res

# 模範回答
N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)

at = A.tally #=> at = {1=>1, 2=>1, 3=>1, 4=>1, 5=>1}
puts B.tally.all?{|b, n| (at[b] || 0) >= n } ? :Yes : :No # B.tally=> {5=>2}
