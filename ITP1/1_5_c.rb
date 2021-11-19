# Print a Chessboard
# 自分の回答 26:49 WA
while (h, w = gets.split(" ").map(&:to_i)) != [0,0]
  str = ""
  h.times do
    w.times do |s|
      if s.odd?
        str = str.concat(".")
      else
        str = str.concat("#")
      end
    end
  end

  puts str
  puts "\n"
end

# 模範回答
loop do
  h,w = gets.split.map(&:to_i)
  break if h == 0 && w == 0
  for i in 1..h do
    for j in 1..w do
      print (i + j) % 2 == 0 ? "#" : "."
    end
    puts
  end
  puts
end