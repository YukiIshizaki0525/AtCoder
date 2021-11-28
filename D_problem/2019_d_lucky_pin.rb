N = gets.to_i
S = gets.chomp

cnt = 0

# 暗証番号は高々 10^3=1000通りしかない
(0..999).each do |i|
    num_str = format("%03<n>d",n: i)
    d1,d2,d3 = num_str.split(//)
    a = S.index(d1,0)
    b = S.index(d2,a+1) if a
    c = S.index(d3,b+1) if b
    cnt += 1 if a && b && c
end

puts cnt



# 参考：https://qiita.com/e869120/items/25cb52ba47be0fd418d6#2-%E3%81%99%E3%81%B9%E3%81%A6%E3%81%AE%E5%9F%BA%E6%9C%AC%E5%85%A8%E6%8E%A2%E7%B4%A2