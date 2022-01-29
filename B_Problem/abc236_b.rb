# B - Who is missing?
# 自分の回答
n = gets.to_i
a = gets.split.map(&:to_i)
res = []
ano_hash = {}
a.each do |num|
  ano_hash[num].nil? ? ano_hash[num] = 1 : ano_hash[num] += 1
end
ano_hash.each do |k, v|
  res.push(k) if v == 3
end

puts res


