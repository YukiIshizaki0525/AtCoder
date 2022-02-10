# B - Varied
# 自分の回答 AC 7:19
# 参考サイト
# https://mi-chan-nel.com/ruby-count-introduction/

s = gets.chomp.split("")
puts s.uniq.size == s.size ? "yes" : "no"