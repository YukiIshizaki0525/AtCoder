# KEYENCE  building
n = gets.to_i
a = gets.split.map(&:to_i)
cnt = 0
a.each do |num|
  for i in (1..num) do
    for j in (1..num) do
      cnt += 1 if 4*i*j+3*i+3*j == num
    end
  end
end

puts cnt

# 模範回答
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

puts a.size #=> 一致しないものだから