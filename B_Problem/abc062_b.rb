# B - Picture Frame
# 自分の回答 11:40 AC
h,w = gets.split.map &:to_i
ary=[]

h.times do
  a = gets.chomp.split("").unshift("#").push("#").join('')
  ary.push(a)
end

ary.unshift("#"*(w+2))
ary.push("#"*(w+2))

ary.each {|a| puts a}

# 模範回答
H, W = gets.chomp.split(' ').map(&:to_i)

arr = []
H.times do
  arr << "#" + gets.chomp + "#"
end

X = "#" * (W+2)

puts X
puts arr
puts X