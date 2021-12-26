# Rally
# 自分の回答 WA 18:00
# n = gets.to_i
# arr = gets.split.map(&:to_i).sort

# if arr.length % 2 == 0
#   a = arr.length / 2 - 1
#   b = arr.length / 2
#   P = (arr[a] + arr[b]) / 2
# else
#   a = (arr.length - 1) / 2
#   P = arr[a]
# end

# result = 0
# arr.each do |num|
#   result += (num - P)**2
# end

# puts result

# 模範回答
require 'byebug'
byebug

n = gets.to_i
xx = gets.split.map(&:to_i)

min = xx.min
max = xx.max

ans = 10**9+7
min.upto(max) do |i|
  sum = 0
  0.upto(n-1) do |j|
    # 配列(xx)の座標を集会の座標Pと仮定した時の合計値
    sum += (xx[j]-i)**2
  end
  # 配列(xx)の座標を集会の座標Pと仮定した時の合計の最小を更新していき、最終的に残ったものが求められる答え
  ans = [ans,sum].min
end
puts ans
