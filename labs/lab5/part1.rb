def prm(a, b, n, c)
  t = 0.0
  h = (b.to_f - a.to_f) / n.to_f
  xx0 = a.to_f + h / 2

  n.times do
    t += c.call(xx0)
    xx0 += h
  end
  t * h
end

def trp(a, b, n, c)
  t = 0.0
  h = (b.to_f - a.to_f) / n.to_f
  x = a
  (0..n).each do |i|
    t += i == 0 || i == n ? c.call(x) / 2 : c.call(x)
    x += h
  end
  t * h
end

def f1 x
  Math.sqrt(2 ** x - 1)
end

def f2 x
  Math.asin(Math.sqrt(x)) / Math.sqrt(x * (1.0 - x))
end

print "Enter n = "
n = gets.to_i
abort "n must be > 0" if n <= 0
p1=Proc.new{|k| f1(k)}
p2=Proc.new{|k| f2(k)}
puts prm(0.3, 1.0, n, p1)
puts trp(0.3, 1.0, n, p1)

puts prm(0.2, 0.3, n, p2)
puts trp(0.2, 0.3, n, p2)
