# Transformation
# 自分の回答 WA 26:59
str = gets.split("")
gets.to_i.times do
  s = gets.split
  if s.include?("replace")
    str.slice!(s[1].to_i..s[2].to_i)
    str.insert(s[1].to_i, s[2].to_i)
  elsif s.include?("reverse")
    re_s = str.slice(s[1].to_i..s[2].to_i).reverse
    str.insert(s[1], re_s)
  else
    print str.slice(s[1].to_i..s[2].to_i)
  end
end

# require 'byebug'
# byebug

# 模範回答
str = gets.chomp
n = gets.chomp.to_i
n.times{
    line =gets.chomp.split
    s = line[1].to_i
    e = line[2].to_i

    case line[0]
    when "print"
        puts str[s .. e]
    when "reverse"
        str[s .. e] = str[s .. e].reverse
    when "replace"
        str[s .. e] = line[3]
    end
}

# 別解
s = gets.chomp
# dropメソッドは捨てる要素数を引数にして、残りの要素を配列で返す
$<.drop(1).each{|l|
	x = l.split
	case x[0]
		when 'print'; puts s[x[1].to_i..x[2].to_i]
		when 'reverse'; s[x[1].to_i..x[2].to_i] = s[x[1].to_i..x[2].to_i].reverse
		when 'replace'; s[x[1].to_i..x[2].to_i] = x[3]
	end
}