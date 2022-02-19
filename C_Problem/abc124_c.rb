# C - Coloring Colorfully
# 自分の回答 WA 27:00
# N枚のタイル
# Si 0=黒, 1=白
# 000 => 010
# 10010010 => 10101010
# 11100000

# 00100101 => 101010101
# 11100000

# 001001011
# 111100000

# 000000000 => 101010101

# s = gets.chomp.split('').sort
# h = s.tally

# if s.length == 1
#   puts 0
# elsif s.length == h[s[0]]
#   puts s.length / 2
# else
#   min_h = h.min{|x, y| x[1] <=> y[1]}
#   puts min_h[1]
# end

# 模範回答
s=gets.chomp #=> s = 10010010
prev_color = s[0] #=> 次の文字と比較するため、まず初期値として1文字目を入れる
count = 0

  require 'byebug'
  byebug

for i in 1...(s.length)
  color = s[i] #=> 2番目の文字をcolorに代入
  color_should_be = prev_color == "0" ? "1" : "0" #=> 前の文字が0なら次の文字は1、前の文字が1なら、次の文字は0であるため、次の文字として適しているものをcolor_should_beに代入
  if color_should_be != color #=> 
    count += 1
  end
  prev_color = color_should_be
end

puts count

