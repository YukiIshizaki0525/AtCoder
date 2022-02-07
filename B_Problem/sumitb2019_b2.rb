# B - Tax Rate(2回目)
# 自分の回答 AC 18:16
n = gets.to_i
puts n == ((n / 1.08).ceil * 1.08).floor ? (n / 1.08).ceil : ":("

# 模範回答
n = gets.to_i
x = (n/1.08).ceil

if (x * 1.08).floor == n
  puts x
else
  puts ":("
end