# B - Qualification simulator(2回目)
# 自分の回答

# n, a, b = gets.split.map &:to_i
# s = gets.chomp.split("")

# pass = a + b
# a_cnt = 0
# b_cnt = 0
# res = ""

# s.each do |visiter|
#   if visiter == "c"
#     puts "No"
#   end
#   if visiter == "a"
#     a_cnt + b_cnt < pass ? res = "Yes" : res = "No"
#     a_cnt += 1
#     puts res
#   end

#   if visiter == "b"
#     a_cnt + b_cnt < pass && b_cnt < b ? res = "Yes" : res = "No"
#     b_cnt += 1
#     puts res
#   end

#   res = ""
# end

# 模範回答
N, A, B = gets.split.map(&:to_i)

passed = 0
abroad_rank = 1 #=> 順位は1位から始まるため、0にしたらWA

require 'byebug'
byebug

gets.chomp.chars.each do |c|
  if c == 'a' && passed < A + B
    passed += 1

    puts 'Yes'
  elsif c == 'b' && passed < A + B && abroad_rank <= B
    passed += 1
    abroad_rank += 1

    puts 'Yes'
  else
    puts 'No'
  end
end

