# A - Tires
# 自分の回答 9:22 WA(13/14)

s = gets.chomp

if s.include?("er")
  puts "er"
else
  puts "ist"
end

# 模範回答
s = gets.chomp

if s.end_with?("er")
  puts "er"
elsif s.end_with?("ist")
  puts "ist"
end