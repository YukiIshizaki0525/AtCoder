# A - Fairness
# 自分の回答 WA 18:10
a,b,c,k = gets.split.map(&:to_i)
if k==0 || [a,b,c].uniq.count == 1
  puts a - b
else
  res_a=0
  res_b=0
  res_c=0
  k.times do
    res_a = b+c
    res_b = a+c
    res_c = a+b

    a = res_a
    b = res_b
    c = res_c
  end
  puts (res_a - res_b).abs < 10**18 ? (res_a - res_b).abs : "Unfair"
end

# 1,2,3=>5,4,3=>7,8,9=>17,16,15=>31,32,33
#        4,2,0=>2,4,6=>10,8,6

# 模範回答
# 参考URL
# https://drken1215.hatenablog.com/entry/2020/11/07/044234
a, b, c, k = gets.split.map(&:to_i)

if (a - b).abs > 10 ** 18
  puts "Unfair"
elsif k.even?
  puts a - b
else
  puts b - a
end


