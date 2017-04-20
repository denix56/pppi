Eps = 0.001

def factorial n
  n > 1 ? n * factorial(n - 1) : 1
end

def eval i
  (-1) ** i * (2 * i ** 2 + 1) / factorial(2*i)
end

def func (n = Float::INFINITY, a = 0, b = 0)
  res = 0
  i = 0
  if(n == Float::INFINITY)
    tmp = eval(i)
    while(tmp.abs >= eps) do
      res += tmp
      i += 1
      tmp = eval(i)
    end
  else
    abort "Incorrect a or b" if a >= b
    h = (b-a) / n.to_f
    (0..n-1).each do |i|
      tmp = eval(i)
      res += tmp
    end
  end
  res
end