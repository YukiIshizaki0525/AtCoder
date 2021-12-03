# Card Game
# 自分の回答

require 'byebug'
byebug

arr = [0, 0]
gets.to_i.times do
  a, b = gets.split
  a.zip(b) do |a, b|
    if a.ord == b.ord
      next
    end

    if a > b
      arr[0] += 3
      break
    else
      arr[1] += 3
      break
    end
  end
end
puts arr.join(" ")

# 模範回答
require 'byebug'
byebug

h=[[0,3],[1,1],[3,0]]
puts gets.to_i.times.map { h[gets.chomp.split.reduce(:<=>) + 1] }.reduce([0,0]){|s,e|s.zip(e).map { |z| z.reduce(:+)} } * ' '

# <=> 演算子は左辺のオブジェクト(レシーバー側)が大きい場合、1を返し、小さければ-1を返し、等しい時0を返す => [[0,3],[1,1],[3,0]]に対応するよう作られている

#入力例の場合、[0, 3] => [1, 1] => [0, 3]の順にs配列に足していく

# s.zip(e).map { |z| z.reduce(:+)} } で二つの配列の各要素を足して新しい配列を作る

