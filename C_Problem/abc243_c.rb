# C - Collision 2
n = gets.to_i
ary = n.times.map{ gets.split.map &:to_i }
s = gets.chomp
res = "No"

ary.each.with_index{ |a, i| a.unshift(s[i]) }
ary = ary.group_by(&:last).delete_if{|a,b| b.count==1}.values

ary.each do |a|
  a.each do |ar|
    p ar
  end
end
