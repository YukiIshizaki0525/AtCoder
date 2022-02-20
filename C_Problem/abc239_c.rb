# C - Knight Fork
# 自分の回答

# x1, y1, x2, y2 = gets.split.map(&:to_i)

# max_x = [x1, x2].max
# max_y = [y1, y2].max

# min_x = [x1, x2].min
# min_y = [y1, y2].min

# res = "No"

# (min_x-2..max_x+1).each do |a|
#   (min_y-2..max_y+1).each do |b|
#     if (x1-a)**2 + (y1-b)**2 == 5  && (x2-a)**2 + (y2-b)**2 == 5
#       res = "Yes"
#       break
#     end
#   end
# end

# puts res

# 模範回答
def root5(x, y)
  table = [[2, 1], [1, 2], [-1, 2], [-2, 1],[-2, -1], [-1, -2], [1, -2], [2, -1]]
  table.map { |x1, y1| [x + x1, y + y1] }
end

x1, y1, x2, y2 = gets.split.map(&:to_i)

require 'byebug'
byebug

a = root5(x1, y1)
# a = [[2, 1], [1, 2], [-1, 2], [-2, 1], [-2, -1], [-1, -2], [1, -2], [2, -1]]

b = root5(x2, y2)
# b = [[5, 4], [4, 5], [2, 5], [1, 4], [1, 2], [2, 1], [4, 1], [5, 2]]


puts (a & b).empty? ? "No" : "Yes" #=> [[2, 1], [1, 2]]