# 全探索セレクト問題
# https://qiita.com/e869120/items/f1c6f98364d1443148b3#1-6-2-%E8%A8%88%E7%AE%97%E9%87%8F%E3%81%A8%E3%82%A2%E3%83%AB%E3%82%B4%E3%83%AA%E3%82%BA%E3%83%A0%E3%81%8C%E4%BD%95%E3%81%8B%E7%90%86%E8%A7%A3%E3%81%99%E3%82%8B

# B -81
# 自分の回答 AC 4:00

n = gets.to_i
result = "No"
for i in 1..9 do
  for j in 1..9 do
    if i * j == n
      result = "Yes"
      break
    end
  end
end

puts result

# 別解
# require 'byebug'
# byebug

# N = gets.to_i
# puts (1 .. 9).any? { |i| (1 .. 9).any? { |j| i * j == N } } ? "Yes" : "No"