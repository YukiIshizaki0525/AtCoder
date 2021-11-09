# Range
# 自分の回答 回答時間 5:00 AC

a, b, c = gets.split.map(&:to_i)
if a < b && b < c
  puts "Yes"
else
  puts "No"
end