# B - Count ABC 2回目
# 自分の回答 AC 8:17

n = gets.to_i
s = gets.chomp
cnt = 0

(0..n).each do |i|
  cnt += 1 if s[i..i+2] == "ABC"
  break if i+2 >= n
end

# 修正ポイント=> 範囲オブジェクトで取る点、s[n, 3]

puts cnt

# 模範回答
a = gets.to_i
s = gets.chomp.chars
i = 0

(a-1).times do |n|
  if s[n, 3].join == "ABC" #s[n, 3] => ["A", "B", "C"]や["C", "C", "A"]など。s[n, 3].joinで結合
    i += 1
  end
end

p i