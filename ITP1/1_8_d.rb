# Ring
# 自分の回答 17:56 WA

# s = gets.chomp.split("")
# p = gets.chomp
# arr=[]

# s.each.with_index do |str, i|
#   arr.push(s[i]..s[p.length-3]) if p[0] == str
# end

# p arr

# 模範回答
ring_str = gets.chomp
test_str = gets.chomp

result = (ring_str * 2).include?(test_str)
puts result ? "Yes" : "No"