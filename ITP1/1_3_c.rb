# Swapping Two Numbers
# 自分の回答 21:27 NoAnswer

# array = []
# while (a, b = gets.split.map(&:to_i) && (a == 0 && b == 0))
#   array.push([a, b].sort.join(""))
# end

# array.each {|i| puts array[i]}

# 模範回答
loop {
a = gets.split.map(&:to_i)
break if a == [0, 0]
puts a.sort.join(" ")
}

# (別解)
# while (x, y = gets.split(" ").map(&:to_i)) != [0, 0]
#   if x > y
#     puts y.to_s + " " + x.to_s
#   else
#     puts x.to_s + " " + y.to_s
#   end
# end



