#Counting Characters
# 自分の回答 18:58 WA

# hash = {}
# ('a'..'z').each { |el| hash[el] = 0 }

# s = gets.split("").map(&:downcase)
# s.each {|str| hash[str] += 1 if hash.has_key?(str) }
# hash.each { |k, v| puts "#{k}:#{v}" }

# 模範回答

sentence = gets(nil).chomp.downcase.split("")

("a".."z").each do |alphabet|
  puts "#{alphabet} : #{sentence.count(alphabet)}"
end