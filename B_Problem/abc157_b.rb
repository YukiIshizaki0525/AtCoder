# B - Bingo
# 自分の回答 WA 21:05
# sheet = 3.times.map{ gets.split.map(&:to_i) }

# ans = "No"

# gets.to_i.times do
#   b = gets.to_i
#   sheet.each do |arr|
#     if arr.include?(b)
#       arr[arr.index(b)] = 0
#     end

#     case sheet
#       when arr.all?(0)
#         ans = "Yes"
#       when sheet[0][0] && sheet[1][0] && sheet[2][0] == 0
#         ans = "Yes"
#       when sheet[0][1] && sheet[1][1] && sheet[2][1] == 0
#         ans = "Yes"
#       when sheet[0][2] && sheet[1][2] && sheet[2][2] == 0
#         ans = "Yes"
#       when sheet[0][0] && sheet[1][1] && sheet[2][2] == 0
#         ans = "Yes"
#       when sheet[0][2] && sheet[1][1] && sheet[2][0] == 0
#     end
#   end
# end

# puts ans

# 模範回答
a = 3.times.map { gets.split.map(&:to_i) }
card = Array.new(3) { [false] * 3 }

gets.to_i.times do
  b = gets.to_i

  a.each_with_index do |row, i|
    row.each_with_index do |col, j|
      card[i][j] = true if col == b
    end

# card = [[false, false, false], [false, false, false], [false, false, false]]
# col = 84
# i = 0
# j = 0
# row = [84, 97, 66]


  end
end

# a = [[84, 97, 66], [79, 89, 11], [61, 59, 7]]
# card = [[true, false, false], [true, true, false], [false, false, true]]

if card.any?(&:all?)
  puts 'Yes'
elsif card.transpose.any?(&:all?)
  # transposeで列の入れ替えをすることで、縦列が全てtrueか判定可能
  puts 'Yes'
elsif card[0][0] && card[1][1] && card[2][2]
  puts 'Yes'
elsif card[0][2] && card[1][1] && card[2][0]
  puts 'Yes'
else
  puts 'No'
end