# Coins 2回目 5:07 AC

a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i
# a, b, c, x = 4.times.map { gets.to_i }
cnt = 0
for i in 0..a do
  for j in 0..b do
    for k in 0..c do
      if i*500 + j*100 + k*50 == x
        cnt += 1
      end
    end
  end
end

puts cnt

#模範回答からのポイント
# 3~6行目は同じ内容のため、下記のように1行にする
# a, b, c, x = 4.times.map { gets.to_i }