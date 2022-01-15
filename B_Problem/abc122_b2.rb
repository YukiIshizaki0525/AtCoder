# B - ATCoder 2回目
# 自分の回答 AC 13:00
# s = gets.chomp.split("")
# acgt = ["A","C","G","T"]
# arr = []
# cnt = 0

# s.each do |str|
#   if acgt.include?(str)
#     cnt += 1
#     arr.push(cnt)
#   else
#     cnt = 0
#   end
# end

# puts arr.empty? ? "0" : arr.max

# 模範回答
require 'byebug'
byebug

s = gets.downcase
head, tail = 0, 0
max = 0
atgc = ['a', 't', 'g', 'c']
while head <= tail && tail < s.length
  if s[head..tail].count("^atgc").zero? #=>atgc以外が含まれるのであればtrue
    
    max = [max, tail - head + 1].max #=> 最大値の更新
    tail += 1 #=> atgcに一致した時、最長のACGT文字列を探すため、創作文字列+1する(tailに+1)
  else
    # ACGT文字列に含まれない時は、最大値の更新はせずに次の文字に行く
    head += 1
    tail += 1
  end
end
puts max