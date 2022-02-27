# C - Connect 6
# 自分の回答
# n = gets.to_i
# ary = n.times.map { gets.chomp.split("") }
# yoko_mass = ary
# tate_mass = ary.transpose
# res = "No"

# naname_mass_hidari = []
# naname_mass_migi = []

# n.times do |i|
#   n.times do |j|
#     naname_mass_hidari.push(ary[i][j]) if i==j
#     naname_mass_migi.push(ary[i][j]) if i+j==n-1
#   end
# end

# yoko_mass.each{|arr| res = "Yes" if arr.count("#") >= 4 }
# tate_mass.each{|arr| res = "Yes" if arr.count("#") >= 4 }
# res = "Yes" if naname_mass_hidari.count("#")>=4
# res = "Yes" if naname_mass_migi.count("#")>=4

# puts res

# 模範回答
n = gets.to_i
s = Array.new(n) { gets.chomp.bytes }
#=> s = [[46, 46, 46, 46, 46, 46, 46, 46], [46, 46, 46, 46, 46, 46, 46, 46], [46, 35, 46, 35, 35, 46, 35, 46], [46, 46, 46, 46, 46, 46, 46, 46], [46, 46, 46, 46,...

require 'byebug'
byebug

n.times do |i|
  (n - 5).times do |j|
    count = 0
    6.times { |k| count += 1 if s[i][j + k] == 35 } #=> 横列で35バイトのもの("#")の数を数える
    if count >= 4
      puts 'Yes'
      exit
    end
  end
end

(n - 5).times do |i|
  n.times do |j|
    count = 0
    6.times { |k| count += 1 if s[i + k][j] == 35 } #=> 縦列で35バイトのもの("#")の数を数える

    if count >= 4
      puts 'Yes'
      exit
    end
  end
end

(n - 5).times do |i|
  (n - 5).times do |j|
    count = 0
    6.times { |k| count += 1 if s[i + k][j + k] == 35 } #=> s[0][0],s[1][1] ~ s[7][7]のパターン

    if count >= 4
      puts 'Yes'
      exit
    end

    count = 0
    6.times { |k| count += 1 if s[i + k][j + 5 - k] == 35 } #=> s[0][7],s[1][6] ~ s[7][0]

    if count >= 4
      puts 'Yes'
      exit
    end
  end
end

puts 'No'
