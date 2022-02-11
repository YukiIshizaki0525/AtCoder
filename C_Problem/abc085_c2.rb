# C - Otoshidama 2回目
# 自分の回答 WA 15:13

n, y = gets.split.map &:to_i
ichiman,gosen,senen = -1,-1,-1

(0..n).each do |i|
  (0..n).each do |j|
    (0..n).each do |k|
      break if i * 10000 + j * 5000 + k * 1000 > y
      if i * 10000 + j * 5000 + k * 1000 == y && i+j+k == n
        ichiman,gosen,senen = i,j,k
        break
      end
    end
  end
end

puts "#{ichiman} #{gosen} #{senen}"

# 模範回答
n, y = gets.strip.split.map(&:to_i)
_i, _j, _k = -1, -1, -1

(0..n).each do |i|
  (0..n - i).each do |j|
    k = n - i - j
    if 10000 * i + 5000 * j + 1000 * k == y
      _i, _j, _k = i, j, k
    end
  end
end

puts "#{_i} #{_j} #{_k}"