# B - Takahashi's Secret
# 自分の回答

# 友達12 => 友達A12(5)
# 友達5 => 友達A5(7)
# 友達7 => 友達A7(14)
# 友達14 => 友達A14(20)
# 友達20 => 友達A20(10)
# 友達10 => 友達A10(3)
# 友達3 => 友達A3(10)

# require 'byebug'
# byebug

n, x = gets.split.map(&:to_i)
array = gets.split.map(&:to_i)
cnt = 0
loop do
  x = array[x-1]
  break if array[x-1] == 0
  array[x-1] = 0
  cnt += 1
end

puts cnt