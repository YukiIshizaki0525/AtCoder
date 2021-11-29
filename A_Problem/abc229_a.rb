# First Grid
# 自分の回答 11:26 AC

# s1 = gets.split("")
# s2 = gets.split("")

# if s1[0] == "." && s2[1] == "."
#   puts "No"
# elsif s1[1] == "." && s2[0] == "."
#   puts "No"
# else
#   puts "Yes"
# end

# 模範回答
require 'byebug'
byebug
# ddは$<.readと同じ意味で、ファイル全読み。1行ずつ読むのが面倒かつまとめて読んで大丈夫な場合は使うことがある

puts (a = `dd`.split) == %W(#. .#) || a == %W(.# #.) ? "No" : "Yes"