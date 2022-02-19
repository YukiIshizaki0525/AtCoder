# B - 美しい文字列
# 自分の回答 AC 9:48

s = gets.chomp.split('')
h = Hash.new(0)
s.each{|v| h[v] += 1 }

puts h.all?{|k, v| v.even? } ? "Yes" : "No"

# 模範回答
gets.chomp.chars.tally.each do |k, v|
  if v.odd?
    puts "No"
    exit
  end
end
puts "Yes"