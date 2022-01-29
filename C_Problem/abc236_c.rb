# C - Route Map
# 自分の回答 WA
# n, m = gets.split.map &:to_i
# s = gets.chomp.split
# t = gets.chomp.split

# s.each do |futsu|
#   if t.select{|kyuko| futsu == kyuko}.count == 0
#     puts "No"
#   else
#     puts "Yes"
#   end
# end

# 演習問題
N,M = gets.split.map(&:to_i)
S = gets.split.map(&:to_s)
T = gets.split.map(&:to_s)

j = 0
N.times do |i|
  if S[i] == T[j]
    puts "Yes"
    j += 1
  else
    puts "No"
  end
end