# C - Product
# n, x = gets.split.map(&:to_i)

# arr = n.times.map{  gets.split.map(&:to_i) }
# arr.each{|num_arr| num_arr.shift }

# arr = arr.combination(n).to_a
# p arr
# # p arr.map{|e| e.inject(:*) }.count{|e| e == x }


# 模範回答
require 'byebug'
byebug

n,x = gets.split.map(&:to_i)

ll,aa = [],[]
1.upto(n) do
  la = gets.split.map(&:to_i)
  ll << la.shift
  aa << la
end

# aa = [[1, 8, 4], [10, 5]]
# ll = [3, 2]

ans = [1]
aa.each do |a|
  ans = ans.product(a).map {|x,y| x*y }
  # ansとa(aaの要素)掛け合わせる
end

# aa = [[1, 8, 4], [10, 5]]
# ans = [10, 5, 80, 40, 40, 20]

# 入力例2だと
# ansと[10,10,10]を掛け合わせた配列を作り、ansに代入 ans = [10, 10, 10]
# ans([10, 10, 10])と2つ目の[10, 10, 10]を掛け合わせた配列を作成 ans = [100, 100, 100, 100, 100, 100, 100, 100, 100]
# ansと3つ目の[2,2,2,2,2]と掛け合わせた配列を作成 要素は45個 ans =[200, 200, ~ 200]

puts ans.count(x)

