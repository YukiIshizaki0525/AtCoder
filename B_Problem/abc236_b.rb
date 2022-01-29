# B - Who is missing?
# 自分の回答
# n = gets.to_i
# a = gets.split.map(&:to_i)
# res = []
# ano_hash = {}
# a.each do |num|
#   ano_hash[num].nil? ? ano_hash[num] = 1 : ano_hash[num] += 1
# end
# ano_hash.each do |k, v|
#   res.push(k) if v == 3
# end

# puts res

# 模範回答
N = gets.chomp.to_i
arr = gets.chomp.split(' ').map(&:to_i)
arr = arr.sort
# arr = [1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3]

require 'byebug'
byebug

for i in 1..N do
  if arr[(i*4)-2] != arr[(i*4)-1] #=> 数字iが書かれたカードの3枚目と4枚目の比較、一致しないなら欠けている4枚目がないため、それが求めている答えになる
    puts i
    break
  end
end


