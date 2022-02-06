# B - Pizza
# 自分の回答

# 模範回答
# 考え方
# 「前に切れ込みを入れた場所から、ピザを時計回りに D 度回した位置に切れ込みを入れる」は「前に切れ込みを入れた場所から、包丁を反時計回りに D 度回した位置に切れ込みを入れる」と言い換えられます。
n = gets.to_i
pizza = [0, 360]
sum = 0

gets.split(' ').map do |piece|
  sum = (sum + piece.to_i) % 360
  pizza << sum
end

# arry = nil
# i = nil
# n = 4
# pizza = [0, 360, 90, 270, 315, 150]
# sum = 150

pizza = pizza.sort #=> pizza = [0, 90, 150, 270, 315, 360]

i = 0
arry = []

while (i <= n)
  arry << pizza[i + 1] - pizza[i]
  i += 1
end

#=> arry = [90, 60, 120, 45, 45]

puts arry.max
