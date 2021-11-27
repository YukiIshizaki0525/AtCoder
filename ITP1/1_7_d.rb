# Matrix Multiplication
# 自分の回答 25:04 AC

#|1 2| |1 2 1|  |1*1+2*0 1*2+2*3 1*1+2*2|
#|0 3| |0 3 2|  |0*1+3*0 0*2+3*3 0*1+3*2|
#|4 5|          |4*1+5*0 4*2+5*3 4*1+5*2|ß

require 'matrix'

n, m, l = gets.split.map(&:to_i)
a = Matrix[*(1..n).map{ gets.split.map &:to_i }]
b = Matrix[*(1..m).map{ gets.split.map &:to_i }]

array = (a * b).to_a
array.each {|a| puts a.join(" ")}

