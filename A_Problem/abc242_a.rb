# A -T-shirt

a,b,c,x = gets.split.map &:to_f

case
when a <= x && b >= x
  puts c/(b-a).abs
when a >= x
  puts "1.0"
when a <= x && b <= x
  puts "0.0"
end
