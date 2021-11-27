# First Grid
# 自分の回答 11:26 AC

s1 = gets.split("")
s2 = gets.split("")

if s1[0] == "." && s2[1] == "."
  puts "No"
elsif s1[1] == "." && s2[0] == "."
  puts "No"
else
  puts "Yes"
end