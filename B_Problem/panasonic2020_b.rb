# B - Bishop
# 自分の回答 TLE 15:57
h, w = gets.split.map(&:to_i)
cnt = 0
h.times do |i|
  if i.even?
    cnt += w / 2 + 1
  else
    cnt += w / 2
  end
end
puts cnt

# 模範回答
require 'byebug'
byebug

H, W = gets.split.map(&:to_i)

if H == 1 || W == 1
  puts 1
else
  div, mod = (H * W).divmod(2) #=> [10, 1]のように[商, 余り]という風に出すことができる

  puts div + mod #=> 求める答えは商と余りの合計
end