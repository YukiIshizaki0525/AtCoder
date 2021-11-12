# How many Divisors?
# 自分の回答 4:50 AC

a,b,c = gets.split.map(&:to_i)
count = 0
(a..b).each do |num|
  if c % num == 0
    count += 1
  end
end

puts count

# (別解)
# a.updo(b)で、aからbまでの範囲で繰り返し処理を行う
a,b,c=gets.split(" ").map(&:to_i)
num=0
a.upto(b){|i|
	if c%i==0
		num+=1
	end
}
puts num