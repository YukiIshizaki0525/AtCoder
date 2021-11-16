# ABC086 C - Traveling

# 自分の回答
n = gets.to_i
t, a, b = gets.split.map(&:to_i)

x, y = [0, 0]
count = 0
t.times do
    until t == count && [x, y] == [a, b]
        count += 1
    end
end

# 模範回答
n = gets.to_i
data = n.times.map { gets.strip.split.map(&:to_i) }

def is_reachable(current, next_data)
    # 次の地点までのマンハッタン距離
    tc, xc, yc = current
    tn, xn, yn = next_data
    dist = (xc - xn).abs + (yc - yn).abs

    # 最短距離でも間に合わない
    return false if dist > tn - tc

    # 行ったり来たりでちょうど到着できるか
    (dist - (tn - tc)).even?
end

current = [0, 0, 0]
data.each do |d|
    unless is_reachable(current, d)
        puts 'No'
        exit 0
    end
    current = d
end

puts 'Yes'

A(0, 0) B(1, 2) 1-0+2-0 = 3
