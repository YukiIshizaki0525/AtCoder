# Pyramid
# 自分の回答 なし

# 模範回答
# 解説

# 高度は「H-中心とのマンハッタン距離」 hi = H-|xi-cx|-|yi-cy|
# 中心は「h[i]+中心とのマンハッタン距離」の高さ H = hi+|xi-cx|+|yi-cy|


# 参考=>https://yamakasa.net/atcoder-abc-112-c/

require 'byebug'
byebug

n = gets.to_i
xyh = Array.new(n) { gets.chomp.split.map(&:to_i) } #=>[[2, 3, 5], [2, 1, 5], [1, 2, 5], [3, 2, 5]]

0.upto(100) do |cx|
    0.upto(100) do |cy|
        ch = nil
        xyh.each do |x, y, h| #=>[2, 3, 5], [2, 1, 5], [1, 2, 5], [3, 2, 5]が入る
            next if h == 0 #=> 条件外
            ch = h + (x - cx).abs + (y - cy).abs #=> 中心の高さ設定
            break
        end
        xyh.each do |x, y, h| #=>[2, 3, 5], [2, 1, 5], [1, 2, 5], [3, 2, 5]が入る
            (ch = nil; break) if h != [ch - (x - cx).abs - (y - cy).abs, 0].max #=> 各座標の高度と高度の比較して一致しない場合は中心の高度を示す
        end
        next if ch.nil?
        puts [cx, cy, ch].join(' ')
        exit
    end
end