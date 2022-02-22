a,b = gets.split.map &:to_i

if a==1 && b==10
  puts "Yes"
elsif a==10 && b==1
  puts "Yes"
elsif a+1 == b || b+1 == a
  puts "Yes"
else
  puts "No"
end