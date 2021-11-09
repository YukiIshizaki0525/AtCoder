# Watch
# 自分の回答 回答時間 11:26 AC
n = gets.to_i

h = n / 3600
m = (n % 3600) / 60
n = (n % 3600) % 60

puts "#{h}:#{m}:#{n}"

# 模範回答

s = gets.to_i
puts "#{s / 3600}:#{(s % 3600) / 60}:#{s % 60}"