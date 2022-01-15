# C - Divide the Problems
# 自分の回答 AC 14:06

n = gets.to_i
problems = gets.split.map(&:to_i).sort
puts problems[n/2] - problems[n/2 - 1]

# 模範回答も一緒
