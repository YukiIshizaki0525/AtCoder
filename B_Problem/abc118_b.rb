# B - Foods Loved by Everyone
# 自分の回答 26:20 AC
# if n == 1
#   n,m = gets.split.map &:to_i
#   a = gets.split.map &:to_i
#   puts a[0]
# else
#   a = n.times.map { gets.split.map &:to_i }
#   a.each { |foods| foods.delete_at(0) }
#   h = a.flatten.group_by(&:itself).map{ |k, v| [k, v.count] }.to_h
#   puts h.count{|k,v| v == n}
# end

# 模範回答
n, m = gets.chomp.split(' ').map(&:to_i)
h = Hash.new {|k, v| h[k] = 0 }


n.times do
  k, *a = gets.chomp.split(' ').map(&:to_i)

  a.each do |v|
    h[v] += 1
  end
end

puts h.values.select {|v| v == n }.count



