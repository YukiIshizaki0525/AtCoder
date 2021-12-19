# A - Irreversible operation
# BWBWBW => WBBWBW => WBWBBW => WBWBWB => WWBBWB => WWBWBB => WWWBBB
# 自分の回答 TLE 20:30
# s = gets.split("")
# count = 0
# while s.join.include?("BW")
#   s.length.times do |i|
#     if s[i] == "B" && s[i+1] == "W"
#       s[i] = "W"
#       s[i+1] = "B"
#       count += 1
#       break
#     end
#   end
# end

# puts count

# 模範回答
# 最終的な形は必ず「WWW..BBB」という風になるためこの形にするまでの時間（回数）が答え
require 'byebug'
byebug

s = gets.chomp

white_cnt = 0
cnt = 0
s.chars.each_with_index do |c,i| # s.chars =>["B", "W", "B", "W", "B", "W"]
    if c=="W"
      cnt += (i-white_cnt) #=> Wを左に寄せるまでの移動回数をここで求める
      white_cnt += 1 #左に1つ以上Wがある場合があるため移動回数を考慮
    end
end
puts cnt