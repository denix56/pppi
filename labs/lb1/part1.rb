puts "Enter t, x, z"
t, x, z = gets.split.map(&:to_r)

include Math
y = (Math.acos(x.abs ** 1.0/5) + 6.9 * 10 ** 3.3) / (t + Math.log((t+1).abs) ** 1.0/5) + E * Math.atan(Math.sqrt(x + PI))
puts "y = ", y
