N = 12
C = 3
step = 1.0 * N / (N+C)
Pi = 3.141

def f_y x
  (x**2 + x * (x**2 - C**2) ** 1.0/2) ** 1.0/N + (x**2 + 1) / (1.0/x + 1.0/N) + (3*x+ C**x) / (x+1)
end

def f_z x
  2 * (Math.atan(4.0*x) - Math.tan(7 * Pi / 2 + 4*x)) + Math.tan(5*Pi + x)
end

puts "First eval"
for x in (1.0..N).step(step) do
  puts "x = #{x.round(3)}, y = #{f_y(x).round(3)}"
end

puts "\nSecond eval"
x2 = Pi / N
step = (Pi - x2) / (3.0 / 2 * N+C)

while(x2 <= Pi) do
  puts "x2 = #{x2.round(3)}, z = #{f_z(x2).round(3)}"
  x2 += step
end

puts "\nThird eval"
x3 = 2.0
step = (C-x3) / (2 * N)

while(x3 <= C) do
  puts "x3 = #{x3.round(3)}, f = #{(case
                                     when 2 < x3 && x3 < N
                                       f_y(x3)
                                      when N < x3 && x3 < 2*N
                                        f_z(x3)
                                      else
                                        f_y(x3) + f_z(x3)
                                    end).round(3)}"
  x3 += step
end



