# B - Collatz Problem
# 自分の回答 WA

s = gets.to_i
a = []
(1..10).each do |i|
  if i == 1
    a.push(s)
  end
  if i % 2 == 0
    a.push(a[i-2] / 2)
  else
    a.push(3 * a[i-2] + 1)
  end
end

p a

# 模範回答
s = gets.to_i
nums = {}
answer = 1

until nums[s]
  nums[s] = true
  s = s.even? ? (s / 2) : (3 * s + 1)
  answer += 1
end

puts answer