# A - Shampoo
# 自分の回答 AC

v,a,b,c = gets.split.map &:to_i
res = ""

while v >= 0
  if v-a < 0
    res = "F"
    break
  end
  v -= a

  if v-b < 0
    res = "M"
    break
  end
  v -= b

  if v-c < 0
    res = "T"
    break
  end
  v -= c
end

puts res
