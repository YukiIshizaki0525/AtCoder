# B - Shiritori
# 自分の回答 AC 19:00

# res = "Yes"
# arr = gets.to_i.times.map{ gets.chomp }

# if arr.tally.all?{|k,v| v==1}
#   prev_str = arr[0][-1]
#   arr.shift

#   arr.each do |a|
#     if a[0] != prev_str
#       res = "No"
#       break
#     else
#       prev_str = a[a.length-1]
#     end
#   end
# else
#   res = "No"
# end

# puts res


# 模範回答
s = []
gets.to_i.times do |i|
  s << gets.chomp
end

require 'byebug'
byebug

s.each_cons(2) do |a, b| # 変数a,bに0番目と1番目の要素を入れられる。a = "basic", b = "c"
  if a[-1]!=b[0] #=> 前要素の最後の文字と、次の要素の最初の文字比較
    puts "No"
    exit
  end 
end
puts s.size != s.uniq.size ? "No" : "Yes" #=> 配列の数とユニーク数を比較して重複があるチェック