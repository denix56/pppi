puts "Enter value, in task: 451"
dec = gets.to_i
tmpDec = dec
bin = ""

begin
  bin += (tmpDec % 2).to_s
  tmpDec >>= 1
end while (tmpDec != 0)

bin.reverse!
puts "#{dec} in binary = #{bin}"
