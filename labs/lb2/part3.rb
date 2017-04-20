puts "Enter value, in task: 10000100101"
bin = gets.chomp()

dec = 0
for i in 0..bin.size-1
  dec += bin[i].to_i * 2 ** (bin.size-1-i)
end

puts "#{bin} in decimal = #{dec}"