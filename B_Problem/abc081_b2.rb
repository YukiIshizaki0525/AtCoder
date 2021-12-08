# Shift only
# 自分の回答 AC 20:07
# require 'byebug'
# byebug

gets
array = gets.split.map(&:to_i)
cnt = 0
while array.select{|n| n % 2 != 0}.count == 0
  new_array = array.map{ |n| n / 2 }
  cnt += 1
  array = new_array
end

puts cnt

# 模範回答からのポイント
# all?(&:even?) => 配列の要素全てが偶数ならtrueを返すことができる
# as = as.map { |a| a / 2 }のようにすれば、new_arrayを変数にして用意する手間が省ける