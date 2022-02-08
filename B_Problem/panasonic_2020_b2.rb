# B - Bishop
# 自分の回答 WA 16:00

# h,w = gets.split.map &:to_i
# arr = h.times.map{[*1..w]}

# 模範回答
# 解説
# https://blog.hamayanhamayan.com/entry/2020/03/15/001953

H, W = gets.split.map(&:to_i)

if H == 1 || W == 1
  puts 1
else
  div, mod = (H * W).divmod(2)
  puts div + mod
end
