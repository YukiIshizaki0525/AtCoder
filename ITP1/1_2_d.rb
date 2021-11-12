# Circle in a Rectangle
# 自分の回答 回答時間 16:53 Wrong Answer

w, h, x, y, r = gets.split(' ').map(&:to_i)
if x + r > w
  puts "No"
else
  if y + r > h
    puts "No"
  else
    puts "Yes"
  end
end

# 模範回答
w, h, x, y, r = gets.split(' ').map(&:to_i)
if x.between?(r, w - r) && y.between?(r, h - r)
  puts "Yes"
else
  puts "No"
end