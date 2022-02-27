# B - Pasta
# 自分の回答 AC 12:10

n,m = gets.split.map &:to_i
a = gets.split.map &:to_i
b = gets.split.map &:to_i
res = "Yes"
m.times do |i|
  if(a.include?(b[i]))
    index = a.find_index(b[i])
    a.delete_at(index)
  else
    res = "No"
    break
  end
end

puts res