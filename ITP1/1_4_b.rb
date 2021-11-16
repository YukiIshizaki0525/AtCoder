# Circle
# 自分の回答 回答時間 10:49 WrongAnswer

# r = gets.to_f
# puts "#{sprintf("%.6f", r * r * 3.14159265)} #{sprintf("%.6f", 2.0 * r * 3.14159265)}"

# 模範回答
include Math
r = gets.to_f
puts "#{sprintf("%.5f", PI * r ** 2)} #{sprintf("%.5f", PI * r * 2)}"