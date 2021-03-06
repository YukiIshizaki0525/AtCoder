# C - Low Elements
# 自分の回答 WA 13:24

# 4 2 5 1 3
# P1,P2,P3,P4,P5
# P1 > P1

# P1,P2,P4 4,2,1

# P3 5
# P5 3

# P1 4

# 模範回答
# 考え方
# Piの数字が、これまで出てきた数字の中で一番小さいかどうかを判定していく
# 「4 2 5 1 3」の場合
# i=4なら「4,2,5,1」が検索対象で、P4は1であるため、検索対象の中で一番小さい数であるため条件を満たす
# i=3なら「4,2,5」が検索対象で、P3は5であるため、検索対象の中で一番小さい数ではないため条件を満たさない

N = gets.to_i
P = gets.split.map &:to_i

min = P[0] #=> min = 4
cnt = 0
N.times do |i|
  min = [min, P[i]].min #=> 配列Pの各項目と現時点での最小値を比較、現状より小さいなら更新

  if P[i] <= min
    cnt += 1
  end
end
puts cnt