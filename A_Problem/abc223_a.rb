# A- Exact Price
# 自分の回答 14:28 AC
x = gets.to_i
if x % 100 != 0 || x == 0
  puts "No"
else
  puts "Yes"
end

# 模範回答
# xが100以上という条件を加えれば0を弾くことができる
x=gets.to_i
if x>=100 and x%100==0
print "Yes"
else
print "No"
end