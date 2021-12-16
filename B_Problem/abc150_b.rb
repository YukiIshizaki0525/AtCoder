# 全探索の参考問題
# B - Count ABC
# 自分の回答 WA 23:53

# n = gets.to_i
# s = gets.gsub(/ABC/, "")

# p s.scan(/{1,#{3}}/)

# 模範回答
require 'byebug'
byebug

a = gets.to_i
s = gets.chomp.chars
i = 0

(a-1).times do |n|
  if s[n, 3].join == "ABC" #s[n, 3] => ["A", "B", "C"]や["C", "C", "A"]など。s[n, 3].joinで結合
    i += 1
  end
end

p i

