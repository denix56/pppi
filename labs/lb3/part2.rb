print "Enter x = "
RealX = gets.to_r

if (-4 < RealX && RealX <= 0)
  realY = ((RealX - 2).abs / (RealX ** 2 * Math.cos(RealX))) ** (1.0 / 7)
elsif (0 < RealX && RealX <= 12)
  realY = 1.0 / (Math.tan(RealX + 1.0 / Math.exp(RealX)) / Math.sin(RealX) ** 2) ** (7.0 / 2)
else
  realY = 1.0 / (1 + RealX / (1 + RealX / (1 + RealX)))
end

puts "y = #{realY}"

realY = case
          when -4 < RealX && RealX <= 0
            ((RealX - 2).abs / (RealX ** 2 * Math.cos(RealX))) ** (1.0 / 7)
          when 0 < RealX && RealX <= 12
            1.0 / (Math.tan(RealX + 1.0 / Math.exp(RealX)) / Math.sin(RealX) ** 2) ** (7.0 / 2)
          else
            1.0 / (1 + RealX / (1 + RealX / (1 + RealX)))
        end

puts "y = #{realY}"