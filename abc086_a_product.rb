a = gets.to_i
b = gets.to_i

puts a * b % 2 == 0 ? "Even" : "Odd"

# 模範回答
a, b = gets.strip.split.map(&:to_i)
puts (a * b).odd? ? 'Odd' : 'Even'
