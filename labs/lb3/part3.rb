print "Enter n = "
IntN = gets.to_i

abort "n must be non negative value" if IntN < 0
#4)
res = 0
sum = 0
(1..IntN).each do |i|
  sum += Math.sin(i)
  res += 1.0 / sum
end

puts "result = #{res}"


#5)
res = 0
(1..IntN).each do
  res = Math.sqrt(res + 2)
end

puts "result = #{res}"



