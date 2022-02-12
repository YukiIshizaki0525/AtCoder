# C - 白昼夢 2回目 WA 22:19
t = %w(dream dreamer erase eraser)
s = gets

t.each {|str| s.delete!(str) if s.include?(str)}
puts s.empty? ? "YES" : "NO"


# 模範解答
s = gets.chomp.to_s
%w(eraser erase dreamer dream).each{ |w| s = s.gsub(w," ") }
s = s.gsub(" ","")
puts s == "" ? "YES" : "NO"

# 別解
# s = gets.strip
# words = ['dream', 'dreamer', 'erase', 'eraser']

# require 'byebug'
# byebug

# until s.empty? do
#     reduced = false
#     words.map do |w|
#         if s[-w.size, w.size] == w #=> w="dream" s[-5,5] = "dream"
#             s = s[0..-w.size - 1] #=> 一致したら更新、w="dream" s = s[0..-6] = "erase"
#             reduced = true
#             break
#         end
#     end

#     unless reduced
#         puts 'NO'
#         exit 0
#     end
# end

# puts 'YES'