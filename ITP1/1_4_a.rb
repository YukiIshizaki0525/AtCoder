# A/B Problem
# 自分の回答 回答時間 8:54 WrongNumber(8/10)

a, b = gets.split.map(&:to_i)
d = a / b
r = a % b
f = a.to_f / b.to_f

puts "#{d} #{r} #{f}"

# 模範回答
a, b = gets.split(" ").map(&:to_i)
puts "#{a / b} #{a % b} #{sprintf("%.5f", a.to_f / b)}"