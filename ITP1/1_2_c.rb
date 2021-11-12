# Sorting Three Numbers
# 自分の回答 回答時間 3:51 AC

array = gets.split.map(&:to_i)
sortrd_array = array.sort
puts "#{sortrd_array[0]} #{sortrd_array[1]} #{sortrd_array[2]}"

# 模範回答
puts gets.split(" ").map(&:to_i).sort.join(" ")