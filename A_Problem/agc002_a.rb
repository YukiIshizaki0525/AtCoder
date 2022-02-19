# A - Range Product
# 自分の回答 TLE 15:00
a,b = gets.split.map &:to_i
res = 1
[*a..b].each{ |num| res *= num }

case
when res > 0
  puts "Positive"
when res < 0
  puts "Negative"
else
  puts "Zero"
end


# 模範回答
# 以下の2点のみを考えればいい
# a,a+1,...bが全て正の場合 => aが正、かつbはaよりも大きい正の数 a > 0 || (b - a + 1)
# a,a+1,...bが全て負の場合 => aとb両方負の場合 => a < 0 && b < 0

a, b = gets.split.map(&:to_i)

if a > 0 || (b - a + 1).even?
  puts "Positive"
elsif a < 0 && b < 0
  puts "Negative"
else
  puts "Zero"
end