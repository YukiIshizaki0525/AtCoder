# require 'byebug'
# byebug

_n = gets.to_i
as = gets.strip.split.map(&:to_i)
cnt = 0
while as.all?(&:even?) do
    cnt = cnt.succ
    as = as.map { |a| a / 2 }
end

puts cnt

