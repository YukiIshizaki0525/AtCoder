# B - Bingo 2回目
a = 3.times.map{ gets.split.map(&:to_i) }
n = gets.to_i
b = n.times.map{ gets.to_i }

a.each do |record|
  record.each_with_index do |num, i|
    record[i] = 0 if b.include?(num)
  end
end

# # 横
# a[0][0] && a[0][1] && a[0][2]
# a[1][0] && a[1][0] && a[1][2]
# a[2][0] && a[2][1] && a[2][2]

# #縦
# a[0][0] && a[0][1] && a[2][0]
# a[0][1] && a[1][1] && a[2][1]
# a[0][2] && a[1][2] && a[2][2]

# # 斜め
# a[0][0] && a[1][1] && a[2][2]
# a[0][2] && a[1][1] && a[2][0]

3.times do |i|
  3.times do |j|
    a[i][j]
  end
end

p a

# 模範回答
a = 3.times.map { gets.split.map(&:to_i) }
card = Array.new(3) { [false] * 3 }

gets.to_i.times do
  b = gets.to_i

  a.each_with_index do |row, i|
    row.each_with_index do |col, j|
      card[i][j] = true if col == b #=> aの値と入力値の比較し、一致したらtrueに変更
    end
  end
end

# a = [[84, 97, 66], [79, 89, 11], [61, 59, 7]]
# card = [[true, false, false], [true, true, false], [false, false, true]]

if card.any?(&:all?)
  puts 'Yes'
  # 横列全てもしくはcard全てがtrueか判定

elsif card.transpose.any?(&:all?)
  puts 'Yes'
  # 縦列全てがtrueか判定
  # transposeメソッドで、下記のように変更できる
  # [[true, false, false], [true, true, false], [false, false, true]]
  # card.tranpose=>[[true,true,true],[false,true,false],[false,false,true]]

elsif card[0][0] && card[1][1] && card[2][2]
  # 斜め列が全てtrueか判定
  puts 'Yes'
elsif card[0][2] && card[1][1] && card[2][0]
  # 斜め列が全てtrueか判定
  puts 'Yes'
else
  puts 'No'
end
