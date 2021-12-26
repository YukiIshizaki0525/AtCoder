# B - Qualification simulator
# 自分の回答

# require 'byebug'
# byebug

n, a, b = gets.split.map(&:to_i)
array = gets.chomp.split("")

pass_number = 0
kaigai = 0


array.each do |str|
  res = "No"
  if pass_number < a + b && str != "c"
    if str == "b" && kaigai < b
      res = "Yes"
      kaigai += 1
      pass_number += 1
      res = ""
    else
      res = "Yes"
      pass_number += 1
      puts res
    end
  else
    puts res
  end
end

# 模範回答
N, A, B = gets.split.map(&:to_i)

passed = 0
abroad_rank = 1

gets.chomp.chars.each do |c|
  if c == 'a' && passed < A + B
    passed += 1

    puts 'Yes'
  elsif c == 'b' && passed < A + B && abroad_rank <= B
    # B位以内なら、予選を通過だから以上以下表記 abroad_rank <= B
    passed += 1
    abroad_rank += 1

    puts 'Yes'
  else
    puts 'No'
  end
end

