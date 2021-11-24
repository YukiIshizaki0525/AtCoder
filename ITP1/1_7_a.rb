# Grading
# 自分の回答 17:04 WA (3/4)

loop do
  m, f, r = gets.split.map(&:to_i)
  break if [m, f, r] == [-1, -1, -1]
  
  if m == -1 || f == -1
    puts "F"
    break
  end
  
  sum = m + f
  case 
  when sum >= 80
    puts "A"
  when sum < 80 && sum >= 65
    puts "B"
  when sum < 65 && sum >= 50
    puts "C"
  when sum < 50 && sum >= 30
    if r >= 50
      puts "C"
    else
      puts "D"
    end
  else
    puts "F"
  end
end

# 模範回答
while (m, f, r = gets.split(" ").map(&:to_i)) != [-1, -1, -1]
  if m + f < 30 or m < 0 or f < 0
    puts "F"
  elsif m + f >= 80
    puts "A"
  elsif m + f >= 65
    puts "B"
  elsif m + f >= 50 or r >= 50
    puts "C"
  else
    puts "D"
  end
end