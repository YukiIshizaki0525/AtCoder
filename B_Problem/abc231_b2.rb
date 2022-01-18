# B - Election(2回目)
# 自分の回答 WA

n = gets.to_i
hash = {}
n.times do
  s = gets.chomp
  hash[s].nil? ? hash[s] = 0 : hash[s] += 1
end

puts hash.max{|a, b| a[0] <=> b[0]}[0]
# puts hash.to_a.max_by(&:last).firstだと上手くいく模様!

# 模範回答
n = gets.to_i
h = Hash.new(0)
n.times do
  s = gets.chomp
  h[s] += 1 #=> h = {"takahashi"=>3, "aoki"=>1, "snuke"=>1}
end

puts h.to_a.max_by(&:last).first