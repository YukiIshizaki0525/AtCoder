# B - Tax Rate
# 自分の回答 23:42 WA
# require 'bigdecimal'
# n = gets.to_i
# no_tax = (n * 100/108.to_f).round

# puts BigDecimal((no_tax.to_f * 1.08).to_s).floor == n ? no_tax : ":("

# 模範回答
require 'byebug'
byebug

n = gets.to_i
x = (n/1.08).ceil

if (x * 1.08).floor == n
  puts x
else
  puts ":("
end