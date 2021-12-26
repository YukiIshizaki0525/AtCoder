# Trained?
# 自分の回答 WA 26:00
# arr = []
# push_arr = []
# (0..gets.to_i-1).each { |i| arr[i] = gets.chomp.to_i }
# button = 1
# cnt=0
# loop do
#   break if cnt < arr.length
#   push_arr << arr[button-1]
#   button = arr[button-1]
#   cnt += 1
# end

# push_arr.uniq.count ==


# 模範回答
require 'byebug'
byebug

n =  gets.chomp.to_i
ary =[]
n.times do
  ary << gets.chomp.to_i
end

index = 0
count = 0
n.times do |num|
  index = ary[index]-1 #=>点灯するボタンの番号が表示
  count +=1
  if index == 1 #=> ボタンの番号が2の時
      puts count
      break
  end
end

if index != 1
  puts -1
end
