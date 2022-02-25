# C - Product 2回目
# 自分の回答

# n,x = gets.split.map &:to_i
# ary = n.times.map{ gets.split.map &:to_i }
# ary.each{|a| a.shift }

# 模範回答
n,x = gets.split.map(&:to_i)

ll,aa = [],[]
1.upto(n) do
  la = gets.split.map(&:to_i)
  ll << la.shift
  aa << la
end

ans = [1]
aa.each do |a|
  ans = ans.product(a).map {|x,y| x*y }
end

puts ans.count(x)
