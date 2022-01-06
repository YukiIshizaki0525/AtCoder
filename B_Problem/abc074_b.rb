# B - Collecting Balls (Easy Version)
# 自分の回答 AC 19:38

n = gets.to_i
k = gets.to_i
result = 0
x = gets.split.map(&:to_i)

x.each do |num|
  a = (0+num).abs * 2
  b = (k-num).abs * 2
  result += [a, b].min
end

puts result

# 模範回答
N, K = gets.to_i, gets.to_i
x = gets.split.map(&:to_i)

puts x.map { |_x| [_x * 2, (_x - K).abs * 2].min }.sum