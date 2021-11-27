# Spreadsheet
# 自分の回答 26:05 WA

# r, c = gets.split.map(&:to_i)

# result = Array.new(r){Array.new(c)}
# r.times do |i|
#   array = gets.split.map(&:to_i)
#   sum = array.sum
#   array.push(sum)
#   result[i] = array

#   c.times do |j|
#     result[r][j] = array[j]
#   end
# end

# result.each { |array| puts array.join("") }

# 模範回答
require 'byebug'

byebug
r, c = gets.split(" ").map(&:to_i)
hyou = Array.new(r){
  arr = gets.split(" ").map(&:to_i)
  arr << arr.inject(&:+)
}
arr = []
(c + 1).times do |i|
  arr << hyou.inject(0){ |sum, item| sum + item[i] } #=各配列のindex番号ごとで足してarrに追加
end
hyou.each{|item|puts item.join(" ")}
puts arr.join(" ")