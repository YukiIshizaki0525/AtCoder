# Finding a Word
# 自分の回答 WA 23:54

w = gets.chomp
cnt = 0
loop do
  t = gets.split
  break if t.include?("END_OF_TEXT")
  cnt += t.select{ |str| str == w }.length
end

# puts cnt

# 模範回答
# require 'byebug'
# byebug
w = gets.chomp
r = 0
while(s = gets.chomp) != "END_OF_TEXT"
  s.downcase.split.each{ |e| r += e == w ? 1 : 0 } #=> ["nurtures", "computer", "scientists", "and", "highly", "skilled", "computer", "engineers"]
end
p r