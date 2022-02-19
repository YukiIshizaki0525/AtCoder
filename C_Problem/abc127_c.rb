# C - Prison
# 自分の回答 TLE 17:34

# n,m = gets.split.map &:to_i
# cnt = 0
# arr = m.times.map{
#   l,r = gets.split.map &:to_i
#   [*l..r]
# }

# (1..n).each {|card_num| cnt += 1 if arr.all?{|gate_num| gate_num.include?(card_num)} }
# puts cnt

# 模範回答
# st=1、en = 4
# l=1, r=3 ⇒[1,2,3] 
# l=2, r=4 ⇒[2,3,4] 
# 全ての配列にある最大値(st)は2、最小値(en)は3 ⇒全て通過は2,3の2つ ⇒答えは2

# st = 1、en = 10
# l=3, r=6 ⇒[3,4,5,6] 
# l=5, r=7 ⇒[5,6,7] 
# l=6, r=9 ⇒[6,7,8,9]
# 全ての配列にある最大値(st)は6、最小値(en)も6 ⇒ 全て通過は6のみの1つ ⇒ 答えは1


n,m = gets.split.map(&:to_i)

st = 1
en = n
1.upto(m) do |i|
  l,r = gets.split.map(&:to_i)
  st = [st,l].max
  en = [en,r].min
end
puts [en-st+1,0].max
