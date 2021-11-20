# Print a Frame
# 自分の回答
# 分からないポイント：最初と最後以外に"."を代入する方法がわからない
result = []
while (h, w = gets.split.map(&:to_i)) != [0, 0]
  array = []
  h.times do |i|
    if i == 0 || i == h
      result.push("#" * w)
    else
      w.times do |t|
        if t == 0 || t == h
          array[t].push("#")
        else
          array[t].push(".")
        end
        result.push(array)
      end
    end
  end
  puts "\n"
end

# 模範回答
while (h, w = gets.split(" ").map(&:to_i)) != [0,0]
  puts "#" * w
  (h - 2).times do
    puts "#" + "." * (w - 2) + "#"
  end
  puts "#" * w
  puts "\n"
end