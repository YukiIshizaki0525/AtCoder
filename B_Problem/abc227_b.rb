# B - KEYENCE building
# 自分の回答 25:00 WA
# require 'byebug'

# byebug
n = gets.to_i
s = gets.split.map(&:to_i)

a, b = 1, 1
cnt = 0
s.each do |num|
  loop do
    if 4 * a * b + 3 * a + 3 * b == num
      cnt += 1
      break
    else
      a += 1
    end

    if 4 * a * b + 3 * a + 3 * b == num
      cnt += 1
      break
    else
      b += 1
    end

    break if 4 * a * b + 3 * a + 3 * b < num
  end
end

# puts cnt

#模範回答
# a≤S かつ b≤S の範囲を全探索すればよいです。
require 'byebug'

byebug
N = gets.to_i
a = gets.split.map(&:to_i)

for i in 1..1000
  for l in 1..1000
    sum = 4 * i * l + 3 * i + 3 * l
    if a.include?(sum)
      a.delete(sum)
    end

    break if sum > 1000 # 1≤Si≤1000のため
  end
end

puts a.size

#別解
# lambdaとsetの学習必要あり
# https://atcoder.jp/contests/abc227/submissions/27304033