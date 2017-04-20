Eps = 0.00001
res = 0
n = 2

def factorial n
  n > 1.0 ? n * factorial(n - 1) : 1.0
end

def firstEval n
  (factorial(2 * n - 1) / (2.0* factorial(n + 1)) ** (n * (n + 1)))
end

tmp = firstEval(n)
while(tmp.abs >= Eps) do
  res += tmp
  n += 1
  tmp = firstEval(n)
end

puts "result 1 = #{res.round(5)}"

def pidiv4
  res = 0.0
  n = 1.0
  tmp = 1.0 / n
  neg = 1
  while(tmp.abs >= Eps) do
    res += tmp
    n += 2
    neg = -neg
    tmp = neg * 1.0 / n
  end
  res
end

puts "reslut 2:\n\tlang: #{(Math::PI / 4).round(5)}, my: #{pidiv4.round(5)}"

def thirdEval n
  factorial(3*n - 1) * factorial(2*n-1) / (factorial(4*n) * 3 ** (2*n) * factorial(2*n))
end

res = 0
n = 1
tmp = thirdEval(n)
while(tmp.abs >= Eps) do
  res += tmp
  n += 1
  tmp = thirdEval(n)
end

puts "result 3 = #{res.round(5)}"