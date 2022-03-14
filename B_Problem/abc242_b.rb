# B - Minimize Ordering
# 自分の回答 AC
# s = gets.chomp.bytes.sort.map{|i| i.chr }.join("")
# puts s

# 模範回答
str = gets.chop.split('')
puts str.sort.join
