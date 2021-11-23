# B - Mongeness
# 自分の回答
# 未回答 16:59

# 模範回答
# Ai1ji + Ai2j2 <= Ai2j1 + Ai1j2を満たしたらYes満たしていないならNo
require 'byebug'
byebug

h, w = gets.chomp.split(" ").map(&:to_i)
arrays = []

h.times do |i|
  arrays[i] = gets.chomp.split(" ").map(&:to_i)
end

judge = true

(h - 1).times do |i|
  (w - 1).times do |j|
    unless arrays[i][j] + arrays[i + 1][j + 1] <= arrays[i + 1][j] + arrays[i][j + 1]
      judge = false
    end
  end
end

puts judge ? 'Yes' : 'No'