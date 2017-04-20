puts "Enter P, t, r (In the task we should use 4 32 16)"
osn, integer, real = gets.split.map(&:to_i)

diap = osn ** real * (1.0 - osn ** (-real))
puts "We can use values from #{-diap} to #{diap}"

