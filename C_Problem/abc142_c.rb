# C - Go to School
# 自分の回答 AC 30:00

# 出席番号1=>2人
# 出席番号2=>3人
# 出席番号3=>1人

# gets.to_i
# students = gets.split.map(&:to_i)
# hash = {}

# students.each_with_index do |num, i|
#   hash[i+1] = num
# end

# res = []
# sort_h = hash.sort_by {|_, v| v}
# sort_h.each {|k, v| res << k }
# puts res.join(" ")

# 模範回答
N = gets.to_i
d = gets.split.map(&:to_i)

# 最初に来た生徒では1人の記録があるはず。
# 二番目に来た生徒では2人の記録があるはず。
# という感じで、記録された人数と来た順番は一致する。

index = []
N.times do |i|
  index[d[i] -1] = i+1
  # 記録された人数と来た順番は一致
end

# d = [2, 3, 1]
# index = [3, 1, 2]

puts index.join(" ")
