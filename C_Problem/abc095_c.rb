# C - Half and Half
# 全探索アルゴリズム「パターン A. 既に分かっているものは探索しない」の類題
# 参照元：https://qiita.com/e869120/items/25cb52ba47be0fd418d6#2-%E3%81%99%E3%81%B9%E3%81%A6%E3%81%AE%E5%9F%BA%E6%9C%AC%E5%85%A8%E6%8E%A2%E7%B4%A2

# 詳しい解説：https://kinaonao.blogspot.com/2018/04/atcoder-beginner-contestabc-095.html

# 自分の回答
# a, b, c, x, y = gets.split.map(&:to_i)

# 模範回答

require 'byebug'
byebug
a, b, ab, x, y = gets.chomp.split(" ").map(&:to_i) #=> [1500 2000 1600 3 2]
ary = []
ary.push(a * x + b * y) #=> ピザAとピザBを単品ずつで買った時
ary.push((ab * (2*y))  + a * (x - y).abs) #=> ABピザ4枚とAピザ1枚
# A2枚、B2枚分のABピザを購入＋ピザA1枚

ary.push((ab * (2*x))  + b * (y - x).abs) #=> ABピザ6枚とBピザ1枚
# A3枚分、B3枚分のピザを購入＋ピザB1枚

if x < y #=>余ってもいいからABピザでAピザX枚、Bピザy枚を用意する
  ary.push(ab * (2*y))
else
  ary.push(ab * (2*x))
end
puts ary.min #=> 最も安く買える方法(最適)