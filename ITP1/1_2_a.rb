# Small, Large, or Equal
# 自分の回答 回答時間 4:07 AC

a, b = gets.split(" ").map(&:to_i)

case
when a < b
  puts "a < b"
when a > b
  puts "a > b"
when a == b
  puts "a == b"
end