# Uneven Numbers
# 自分の回答 AC 5:47
cnt = 0
1.upto(gets.to_i) {|i| cnt += 1 if i.to_s.length.odd?}
puts cnt

# 模範回答
n = gets.to_i
a = (1..n).count{|n|n.to_s.size.odd?}
puts a