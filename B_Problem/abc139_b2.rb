# B - Power Socket 2回目
# 自分の回答

a, b = gets.split.map(&:to_i)
cnt = 0
tap = a

loop do
  cnt += 1
  break if b <= tap
  tap += a - 1
end

puts cnt

# 模範回答
A, B = gets.split.map(&:to_i)
ans, input = 0, 1 #=> 初めは差し込み口1つ空いている
while input < B
  input += (A - 1) #=> A個口の電源タップは新たにA個口増やすとき差込口を一つ使うため、差し込み口の総数はA-1になる
  ans += 1
end

puts ans