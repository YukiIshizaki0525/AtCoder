# A - On and Off
# 自分の回答 22:00 AC
# require 'byebug'
# byebug
s, t, x = gets.split.map(&:to_i)
judge = false

loop do
  if s == x
    judge = true
    break
  end
  s = 0 if s == 24
  s += 1
  break if s == t
end

puts judge ? 'Yes' : 'No'