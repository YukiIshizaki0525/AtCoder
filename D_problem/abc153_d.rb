# D - Caracal vs Monster
# 自分の回答

# def appearance_monster(h)
#   return 1 if h == 1
#   return appearance_monster(h/2) * 2
# end

# h = gets.to_i
# puts appearance_monster(h)-1


# 2 => 1,1 3回
# 4 => 2,2 => 1,1,1,1 7回

# appearance_monster(4) => appearance_monster(2) + appearance_monster(2)
# appearance_monster(2) => appearance_monster(1) + appearance_monster(1) + appearance_monster(1) + appearance_monster(1)

# 模範回答
# 公式解説
# https://blog.hamayanhamayan.com/entry/2020/01/27/202817

n=gets.to_i
require 'byebug'
byebug

k=1
ans=0
while n>0
  # Xをどんどん2で割って行って、同時に個数も2倍していきながら足すことで
  # 1+2+4+8+...のように答えを求めることができる。
  n=n.div(2) # n=4 => n=2 => n=1 => n=0
  ans+=k #ans=0 => ans=1 => ans=3 => ans=7
  k*=2 #k=2 => k=4 => k=8
end
puts ans