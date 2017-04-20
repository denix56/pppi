print "Введите температуру и шкалу (С or F): "
str = gets

exit if str.nil? or str.empty?
str.chomp!
temp, scale = str.split(" ")
abort "#{temp} недопустимое число." if temp !~ /-?\d+/
temp = temp.to_f

case scale
  when "C", "c"
    far = 1.8*temp + 32
  when "F", "f"
    сel = (5.0/9.0)*(temp-32)
  else
    abort "Необходимо задать С или F."
end

if far.nil?
  print "#{сel} градусов C\n"
else
  print "#{far} градусов F\n"
end