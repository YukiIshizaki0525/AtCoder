# Standard Deviaition
# 自分の回答 AC 10:56
# 標準偏差と分散について参考URL:https://www.studyplus.jp/413
# Rubyで標準偏差を表現する方法：http://moefeather.net/programming/2676/

def std(arr_x)
  avg = arr_x.sum/arr_x.length
  arr = arr_x.map{|x| (x-avg)**2}
  return Math.sqrt(arr.sum/arr_x.length)
end

while (n = gets.to_i) != 0
  arr_x = gets.split.map(&:to_f)
  puts std(arr_x)
end



