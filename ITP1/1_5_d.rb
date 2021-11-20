# Structured Programming
# 自分の回答 7:03 AC

# n = gets.to_i

# (1..n).each do |i|
#   if i % 3 == 0 || i.to_s.include?("3")
#     print "#{i} "
#   end
# end

# 別解
# 1から数字の間で条件に一致するものをselectし、出力
puts ' '+(1..gets.to_i).select{|i| i % 3 == 0 || i.to_s.include?('3') } * ' '