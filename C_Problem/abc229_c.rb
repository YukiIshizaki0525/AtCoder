# Cheese
# 模範回答
require 'byebug'
byebug

N, w = gets.chomp.split.map(&:to_i)

C = []
i = 0
while i < N
    C.push(gets.chomp.split.map(&:to_i))
    i += 1
end

C.sort_by! { |c| -c[0]} #=> 美味しさの総和で決まるため,美味しさ(c[0])順でソート=>[[4, 2], [3, 1], [2, 3]]

v = 0
i = 0
while i < N
    a,b = C[i]
    v += a * [w, b].min #美味しさ4を2g, 美味しさ3を1g、美味しさ2を2g、総和が5gのため
    w -= [w, b].min #使った分を総和から減らしていく
    i += 1
end

puts v