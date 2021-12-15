# Digits in Multiplication
# WA 20:00
# n = gets.to_i
# array = []
# for a in (1..n) do
#   for b in (1..n) do
#     if a * b == n
#       array.push([a, b])
#     end
#   end
# end

# 模範回答
require 'byebug'
byebug
N = gets.to_i

list = []
i=1
while i*i <= N
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