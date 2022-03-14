# A -T-shirt
# 自分の回答 WA
a,b,c,x = gets.split.map &:to_f

case
when a <= x && b >= x
  puts c/(b-a).abs
when a >= x
  puts "1.0"
when a <= x && b <= x
  puts "0.0"
end

# 模範回答
a, b, c, x = gets.split.map(&:to_i)

if x <= a
  puts 1
elsif x > b
  puts 0
else
  puts c.to_f / (b - a)
end
