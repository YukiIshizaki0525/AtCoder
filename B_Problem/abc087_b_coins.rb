# ABC087 B - Coins

# 自分の回答

# 500円 A
# 100円 B
# 50円  C
# 合計金額 X円にするのは何通り？

a, b, c, x = 4.times.map { gets.to_i }
cnt = 0

(0..a).each do |o|
    (0..b).each do |j|
        (0..c).each do |k|
            cnt += 1 if o * 500 + j * 100 + k * 50 == x
        end
    end
end

puts cnt