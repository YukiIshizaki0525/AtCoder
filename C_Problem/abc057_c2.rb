# C - Digits in Multiplication 2回目
# 自分の回答
# def devisor(n)
#   res = []
#   i=1
#   while i<n do
#     if n % i == 0
#       a,b = i,n
#       res.push([a,b])
#       n /= i
#     end
#     i += 1
#   end

#   return res
# end

# n = gets.to_i
# p devisor(28)

# 模範回答
N = gets.to_i

require 'byebug'
byebug

list = []
i=1
while i*i <= N #=>N=28で、i=6の時、6*6などNを超えてしまう数値が出てこれは調査範囲外のためループを抜ける
  if N%i != 0
      i+=1
      next
  end
  list << [i,N/i]
  i+=1
end

# 上記で取れるもの
# list = [[1, 10000], [2, 5000], [4, 2500], [5, 2000], [8, 1250], [10, 1000], [16, 625], [20, 500], [25, 400], [40, 250], [50, 200], [80, 125], [100, 100]]

ans = Float::INFINITY
list.each do |l|
  t = [l[0].to_s.size, l[1].to_s.size].max
  ans = [ans,t].min #=> minを更新していく
end
puts ans
