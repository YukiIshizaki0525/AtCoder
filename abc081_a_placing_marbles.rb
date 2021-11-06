# masu = gets.split('').count("1")
# puts masu

# => AC

# 模範回答
nums = gets.strip.split('').map(&:to_i)
puts nums.inject(:+)

# stripメソッド：文字列に含まれる半角の空白や改行コードを除去
