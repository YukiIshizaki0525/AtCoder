# Print Test Cases
# 自分の回答 18:20 NoAnswer

n = gets.to_i
i = 1
array = []
array.push("Case #{i}:#{n}")

while n != 0
  m = gets.to_i
  array.push("Case #{i}:#{n}")
  i += 1
end

array.each do |i|
  puts array[i]
end

# 模範回答
i = 1
while (x = gets.to_i) != 0
  puts "Case #{i}: #{x}"
  i += 1
end