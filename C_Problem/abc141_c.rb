# C - Attack Survival
# 自分の回答 WA 26:34
# n,k,q = gets.split.map &:to_i
# arr = Array.new(n){k}
# answer = Array.new(n){-k}
# q.times do
#   arr.each do |num|
#     num += 1 if num+1 != gets.to_i
#   end
# end

# res = [arr,answer].transpose.map{|a| a.inject(:+)}
# p res

# 模範回答
n, k, q = gets.chomp.split.map(&:to_i)
arr = Array.new(n, 0)

q.times{arr[gets.to_i - 1] += 1} #=> ラウンド終了時点の正解数 = arr = [1, 1, 2, 0, 0, 0]
arr.map!{|x| (x - q + k > 0) ? "Yes" : "No"} #=> 条件に一致するならYesにかえる、一致しないならNo
puts arr