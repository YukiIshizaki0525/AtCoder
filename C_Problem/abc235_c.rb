# C - The Kth Time Query
# 自分の回答
# n, q = gets.split.map(&:to_i)
# a = gets.split.map(&:to_i)

# arr = []
# cnt = 1

# a.each do |num|
#   cnt = arr.select{|k, v| k == num}.count
#   arr.push([num, cnt+1])
# end

# result = []
# ano_cnt = 0

# q.times do
#   x, k = gets.split.map(&:to_i)
#   arr.each.with_index do |num, i|
#     ano_cnt = 0
#     if num == [x,k]
#       result.push(i+1)
#       break
#     else
#       ano_cnt += 1
#     end
#     result.push(-1) if ano_cnt == arr.length + 1
#   end
# end

# result.each {|i| puts i }


# # 演習問題
n, q = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

xk = []
q.times do
  xk << gets.split.map(&:to_i)
end

# 入力例1
# a = [1, 1, 2, 3, 1, 2]
# ans = nil
# hash = nil
# n = 6
# q = 8
# xk = [[1, 1], [1, 2], [1, 3], [1, 4], [2, 1], [2, 2], [2, 3], [4, 1]]

# ハッシュ解説
# https://docs.ruby-lang.org/ja/latest/class/Hash.html

hash = {}
a.each.with_index { |x, i| hash[x].nil? ? hash[x] = [i] : hash[x] << i }
# keyがないならkeyと値を追加、あるならkeyに該当する値のみ追加

# 結果
# hash = {1=>[0, 1, 4], 2=>[2, 5], 3=>[3]}

ans = []
xk.each do |x, k|
  index = hash[x] #=>各ループで[0, 1, 4],[2, 5],[3]をとる
  index = index&.[](k - 1)
  #=> &.でnilチェック、indexには[0, 1, 4]のように入り、k-1の値と一致するものをindexに再代入する
  #=> [1,4]などはindex = nilとなる
  ans << (index.nil? ? -1 : index + 1)
end

puts ans

