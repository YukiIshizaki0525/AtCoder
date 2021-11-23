# Finding Missing Cards
# 自分の回答 23:02 WA
# 不明点：入力された配列とカード一覧から一致するものを見つけ削除する方法がわからない

require 'byebug'
cards = []
egara = ['S', 'H', 'C', 'D']

egara.each do |str|
  (1..13).each do |i|
    cards.push([str, i])
  end
end

n = gets.to_i

n.times do
  a, b = gets.split
  if cards.include?([a, b])
    cards.delete!([a, b])
  end
end

cards.each do |row|
  p row
end

# 模範回答
byebug
n = gets.to_i
h = {}
n.times do
  s = gets
  h[s.chomp] = 1 #=> h = {"S 1"=>1}
end

# 入力後：h = {"S 1"=>1, "H 2"=>1, "C 4"=>1, "D 3"=>1}

for m in ["S", "H", "C", "D"] do
  for i in 1..13 do
    puts "#{m} #{i}" if !h.has_key?(m+" "+i.to_s) #=> hashのkeyと"m i"を比較
  end
end