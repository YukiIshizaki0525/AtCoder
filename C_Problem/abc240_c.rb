# C - Jumping Takahashi
# 自分の回答 WA
# n, x = gets.split.map &:to_i

# n.times do |i|
#   a,b= gets.split.map &:to_i
#   j_a = (cu-a).abs
#   j_b = (cu-b).abs
#   j_a<=j_b ? cu += a : cu += b
# end

# puts cu == x ? "Yes" : "No"

# 模範解答
N,X = gets.chomp.split.map(&:to_i)
ab=[]
N.times{ ab << gets.split.map(&:to_i)}
dp = Array.new(N+1) { Array.new(X+1,0)} #=>移動できる最大値は10なので11個の要素で構成
i = 0
dp[0][0] = 1 #=> いた事がある座標が1になるため、最初にいる地点を座標1にする

# ab = [[3, 6], [4, 5]]
# dp = [[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]]

require 'byebug'
byebug


ab.each do |a_jump, b_jump| #=> a_jump = 3, b_jump = 6, a_jump = 4, b_jump = 5,
  dp[i].each_with_index do |reach,index|
    if reach == 1 #座標1は移動してきた座標になる
      # 移動できる座標を特定するため1にする
      dp[i + 1][index + a_jump] = 1
      dp[i + 1][index + b_jump] = 1

      # これで移動できるパターンを絞り出せる
      # 前回aが3移動して、bが6移動したものに対し、さらにaが4, bが5移動した場合、移動したパターンは以下の4つ
      # (a,b) = (3,4),(3,5)(6,4)(6,5)
    end
  end
  i += 1
end

# aで3と4 b_jump = 6, a_jump = 4, b_jump = 5,
# dp = [[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1]]

if dp[N][X] == 1
  puts "Yes"
else
  puts "No"
end

