# 105
# 自分の回答 AC 10:00

#約数の個数は累乗の数を掛け合わせたもの
#約数の個数の求め方 => https://qiita.com/norioc/items/5c270ad6ff5d22d1efd0
#Rubyで素数を扱う => https://qiita.com/norioc/items/5c270ad6ff5d22d1efd0
# 12 = 1 2 3 4 6 12
# 105 = 1 3 5 7 15 21 35 105
require 'byebug'
require 'prime'

byebug
a = (1..gets.to_i).count{|n| Prime.prime_division(n).map{|p, e| e + 1}.inject(:*) == 8 if n.odd?}
puts a