# B - Count Balls
# 自分の回答 WA 15:35
# N,A,B = gets.split.map &:to_i
# arr = ("b"*A + "r"*B).chomp.split("")

# while N >= arr.length
#   arr *= 2
# end

# puts arr[0..(N-1)].count{|s| s == "b"}

# 模範回答
# 解説
# https://note.com/tanon_cp/n/n04f7a5bc7ad4

require 'byebug'
byebug

n,a,b = gets.split.map(&:to_i)

div,mod = n.divmod(a+b) #=> div = 1 mod = 1、商1,余り1

if mod < a
  puts div*a + mod
elsif mod >= a
  puts div*a + a
end

# 6,1,4 => brrrr => 6/5 => K=1 => 1個並べることができる => b
# 8,2,2 => bbrr => 8/4 =>「bbrr」を2回 bbrrbbrr => 2*2個の青いボールが置かれる =>