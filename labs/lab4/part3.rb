require "mathn"
require "matrix"

print "Enter size of linear equation: "
N = gets.to_i
abort "The size of linear equation must be 3 <= n <= 9" if N < 3 || N > 9
puts "Enter k (the computer`s number) = "
k = gets.to_i

m = Matrix.rows(Matrix.diagonal(*([2] * N)).to_a.map {|row| row.map {|value| value == 0 ? k + 2 : value}})
puts m
b = *(1..N)
m_b = Matrix.rows((m.to_a.transpose << b).transpose)
rankA = m.rank
rankB = m_b.rank
abort "This linear system is inconsistent. Rank(A) = #{rankA}, rank(B) = #{rankB}" if rankA != rankB

ind = 0
ar = m_b.to_a
N.times do
  (ind..N-1).each do |i|
    if(ar[i][ind] != 0)
      ar[i], ar[ind] = ar[ind], ar[i]
      break
    end
  end

  (ind..N-1).each do |i|
    coef1 = ar[i][ind]
    ar[i].map!{|value| value / coef1}
  end

  indRow = Vector.elements(ar[ind])

  ind += 1
  (ind..N-1).each do |i|
    iRow = Vector.elements(ar[i])
    iRow -= indRow
    ar[i] = iRow.to_a
  end
end

ind -= 1
(N-1).downto(1).each do |k|
  (0..k-1).each do |i|
    ar[i][N] -= ar[i][k] * ar[k][N]
  end
end

ans = Vector.elements(ar.transpose[-1])
puts ans