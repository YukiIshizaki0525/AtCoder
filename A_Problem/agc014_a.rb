# A - Cookie Exchanges
# 自分の回答 WA 16:45
# 4 12 20

# 0 14 22
# 10 0 26
# 14 22 0

# 4 12 8

# array = gets.split.map(&:to_i)
# cnt = 0

# while array.all?(&:odd?) do
#   ano_arr = []
#   array.each_with_index do |num, i|
#     if i = 0
#       ano_arr += array.map(
#         array[0] = 0
#         array[1] += num / 2
#         array[2] += num / 2
#       )
#     end
#   end
# end

# 模範回答
require 'byebug'
byebug

a,b,c = gets.split.map(&:to_i)
count = 0

while (a%2==0 && b%2==0 && c%2==0) do
  if (a==b && b==c)
    puts -1
    exit
  end
  a,b,c = (b+c)/2,(a+c)/2,(a+b)/2
  count += 1
end

puts count