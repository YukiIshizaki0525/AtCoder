# ABC225 Star or Not

# 考え方
# 全ての頂点の次数(頂点から出ている辺の数)を数える
# 次数がn-1の頂点があるならYes、ないならno
# => 他の N−1N−1 個の頂点に 1 本ずつ辺が出ている頂点がある


# 自分の回答
# なし

#  参考回答
# https://atcoder.jp/contests/abc225/submissions/27010162

require 'byebug'
require '2.7.1'

byebug
n = gets.to_i
ary = Array.new(n-1){gets.split.map(&:to_i)} # ary = [[1, 4], [2, 4], [3, 4], [4, 5]]
puts ary.flatten.tally.values.max == n-1 ? 'Yes' : 'No'

# ary.flatten => [1, 4, 2, 4, 3, 4, 4, 5]
#ary.flatten.tally ⇒ {1 ⇒1, 2⇒1, 3⇒1, 4⇒4, 5⇒1}