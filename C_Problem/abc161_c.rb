# C - Replacing Integer
# 自分の回答 WA 09:32
n, k = gets.split.map(&:to_i)
100.times do
  num = (n-k).abs
  n = [n, num].min
end

puts n

# 模範回答
# よく分かる解説
# https://drken1215.hatenablog.com/entry/2020/04/05/155200

# 最終的に描きを繰り返すようになる
# N を K で割ったあまり (N % K)
# それを K から引いた値 (K - N % K)

# N=45,K=8の時
# 45 → 37 → 29 → 21 → 13 → 5 → 3 → 5 → 3 → 5 → 3

n,k = gets.split.map(&:to_i)
r = n % k
puts [r,(r-k).abs].min
