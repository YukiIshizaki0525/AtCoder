# Hard Calculation
# 自分の回答 46:29 AC
# require 'byebug'
# byebug
a, b = gets.split

a = a.split("").map(&:to_i)
b = b.split("").map(&:to_i)

if a.length > b.length
  (a.length - b.length).times do
    b.unshift(0)
  end
else
  (b.length - a.length).times do
    a.unshift(0)
  end
end

arr = []
a.zip(b).each{ |i| arr << i.sum }
puts arr.select{|i| i >= 10}.count >= 1 ? "Hard" : "Easy"

