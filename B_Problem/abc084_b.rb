# B - Postal Code
# 自分の回答 WA 17:58
# a,b = gets.split.map &:to_i
# s = gets.chomp

# if s[a] == "-"
#   s.delete!(s[a])
#   puts /\A[0-9]+\z/ =~ s ? "Yes" : "No"
# else
#   puts "No"
# end

# 模範回答
a, b = gets.chomp.split(' ').map(&:to_i)
s = gets
reg = Regexp.new(/\d{#{a}}-\d{#{b}}/) #=> reg = (?-mix:\d{3}-\d{4})
puts reg.match?(s) ? 'Yes' : 'No'