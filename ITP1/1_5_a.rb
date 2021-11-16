# Print a Rectangle
# 自分の回答 回答時間 32:30 WrongAnswer
# require 'byebug'

# byebug
sum_array = []
loop do
  h, w = gets.split.map(&:to_i)
  break if [h, w] == [0, 0]
  array = []
  h.times { array.push("#" * w) }
  sum_array.push(array)
end

sum_array.each do |arr|
  puts arr
end

# 模範回答
while (h, w = gets.split(" ").map(&:to_i)) != [0,0]
  h.times do
    puts "#" * w
  end
  puts "\n"
end

