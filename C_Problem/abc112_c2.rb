# C - Pyramid 2回目
# 自分の回答 WA

# 模範回答
# n = gets.to_i
# xyh = Array.new(n) { gets.chomp.split.map(&:to_i) } #=>[[2, 3, 5], [2, 1, 5], [1, 2, 5], [3, 2, 5]]

# require 'byebug'
# byebug

# 0.upto(100) do |cx|
#     0.upto(100) do |cy|
#         ch = nil
#         xyh.each do |x, y, h| #=>[2, 3, 5], [2, 1, 5], [1, 2, 5], [3, 2, 5]が入る
#             next if h == 0 #=> 条件外
#             ch = h + (x - cx).abs + (y - cy).abs #=> 中心の高さ設定
#             break
#         end
#         xyh.each do |x, y, h| #=>[2, 3, 5], [2, 1, 5], [1, 2, 5], [3, 2, 5]が入る
#             (ch = nil; break) if h != [ch - (x - cx).abs - (y - cy).abs, 0].max #=> 各座標の高度と高度の比較して一致しない場合は中心の高度を示す
#         end
#         next if ch.nil?
#         puts [cx, cy, ch].join(' ')
#         exit
#     end
# end

n = gets.to_i
xyh = []
n.times do
  z = gets.split.map(&:to_i)
  xyh << z if z[2] > 0
end
if xyh.size == 1
  puts xyh[0].join(' ')
  exit
end

101.times do |cx|
  101.times do |cy|
    u = xyh.map{ _3 + (_1 - cx).abs + (_2 - cy).abs } #=> [10, 8, 8, 10]
    if u.uniq.size == 1 #=> 中心が(2,2)になったらuの値は[6,6,6,6]となる
      puts [cx, cy, u[0]].join(' ')
      exit
    end
  end
end
