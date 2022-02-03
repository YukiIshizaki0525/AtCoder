# A - Not Overflow
# 自分の回答 AC
n = gets.to_i
res = ""
n >= -2**31 && n < 2**31 ?  res = "Yes" : res = "No"
puts res