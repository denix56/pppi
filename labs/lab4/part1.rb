a = Array.new(11) {rand(-100.0..100.0)}
a += Array.new(2, 0)
puts "a = #{a}"
b = a.sort
tmp = b.count(0.0)
b.delete(0.0)
b  = Array.new(tmp, 0.0) + b
puts "b = #{b}"
