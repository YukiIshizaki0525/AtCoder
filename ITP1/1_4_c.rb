# Simple Calculator
# 自分の回答 回答時間 11:22 AC
loop {
  a, op, b = gets.split.map.with_index {|val, i| i != 1 ? val.to_i : val}
  break if op == "?"

  if op == "+"
    puts a + b
  elsif op == "-"
    puts a - b
  elsif op == "*"
    puts a * b
  elsif op == "/"
    putcds a / b
  end
}

# 別解
while !(a, op, b = gets.split(" ")).include?("?")
  puts a.to_i.send(op, b.to_i)
end