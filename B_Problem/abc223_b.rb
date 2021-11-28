# B - String Shifting
# 自分の回答 25:33 WA
s = gets.split("")
ord_s = gets.split("").map(&:ord)
p s
(0..s.length-1).each do |i|
  if s[i].ord == ord_s.min
    s[s.length-1].pop
  end
end

# 模範回答
require 'byebug'
byebug
s = gets.chomp.split(//)
copy = s.dup
a = s.length.times.map do
  copy << copy.shift #=> 最初の要素(copy[0])を最後に移動
  copy.join
end

#=> a = ["bracadabraa", "racadabraab", "acadabraabr", "cadabraabra", "adabraabrac", "dabraabraca", "abraabracad", "braabracada", "raabracadab", "aabracadabr", "a...

sorted = a.sort
puts(sorted[0]) #=> 最小
puts(sorted[-1]) #=> 最大