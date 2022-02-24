# C - Lower
# 自分の回答 TLE 24:53
# n = gets.to_i
# h = gets.split.map &:to_i
# res = []

# n.times do |i|
#   count = 0
#   current = h[i]
#   num = i+1
#   while h[num].to_i>0
#     if current >= h[num].to_i
#       count += 1
#       current = h[num].to_i
#     else
#       break
#     end
#     num += 1
#   end
#   num = 0
#   res.push(count)
# end

# puts res.max

# 模範回答
n = gets.to_i
h = gets.split.map(&:to_i)
max = 0
count = 0

require 'byebug'
byebug

n.times{|i|
  # iと等しくなったら配列の最後の要素までいったことになる為、その時点でのmaxを更新
  if i == n-1
    max = [max,count].max
  elsif h[i] < h[i+1] #=> 10<4, 4<8, 8<7, 7<3
    # 次の値の方が大きい場合、そこで終了なので現count数と暫定のcount数最大値(max)と比較
    max = [max,count].max
    #count数をリセットし次の比較を確認
    count = 0
  else
    count += 1 #=> 次の値の方が小さい場合(10<4など)の時、count+=1
  end
  }
puts max