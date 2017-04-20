require "mathn"
require "matrix"
X, Y = Vector.elements(Array.new(8) {rand(10)}), Vector.elements(Array.new(8) {rand(10)})

class Matrix
  def []=(i, j, value)
    @rows[i][j] = value
  end
end


res = Matrix.build(X.size, Y.size) {0}
for i in 0..X.size-1 do
  for j in 0..Y.size-1 do
    res[i, j] = X[i] * Y[j]
  end
end

puts res
