# B - Palindromic Numbers
# 自分の回答 AC 8:09
# a,b = gets.split.map &:to_i
# cnt = 0
# a.upto(b) do |num|
#   arr = num.to_s.chars
#   cnt += 1 if arr.join('') == arr.reverse.join('')
# end

# puts cnt

# 模範回答
a, b = gets.chomp.split.map(&:to_s)
c = 0
(a..b).each do |i|
  c += 1 if i == i.reverse
end
puts c