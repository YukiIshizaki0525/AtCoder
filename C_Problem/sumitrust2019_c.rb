# C - 100 to 105
# 全探索アルゴリズム：パターン C. 別の視点から全探索する
# Rubyで動的計画法 => https://jabba.cloud/20161020172918


# 自分の回答

# x = gets.to_i
# if x < 100
#   puts "0"
# end

# for i in  do
  
# end

# 模範回答
require 'byebug'
byebug

x = gets.to_i
(1..x).each do |i|
    if 100 * i <= x && x <= 105 * i
        puts 1
        exit
    end
end
puts 0
