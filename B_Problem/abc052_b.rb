# B - Increment Decrement
# 自分の回答  AC 11:30

n = gets.to_i
s = gets.chomp.split("")
x = 0
res = 0

s.each do |str|
  str == "I" ? x += 1 : x -= 1
  res = [res, x].max
end

puts [0, res].max

# 模範回答
gets
a,m=0,0
gets.chomp.each_char do |s|
  a-=1 if s=='D'
  a+=1 if s=='I'
  m=[m,a].max
end
p m