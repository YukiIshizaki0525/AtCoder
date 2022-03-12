# C - 1111gal password
# 自分の回答
n = gets.to_i
start = ("1"+"0"*(n-1)).to_i
finish = (("1"+"0"*n).to_i)-1
arr = [*start..finish]
count = 0
arr.each do |num|
  num = num.to_s
  flag = true
  (n-1).times do |i|
    if (num[i].to_i - num[i+1].to_i).abs > 1
      flag = false
      break
    end
  end

  count += 1 if flag
end

puts 998244353%count
