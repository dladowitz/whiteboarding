def factorial_recursive(n)
  if n <= 1
    return n
  else
    return (n * factorial_recursive(n - 1))
  end
end

def factorial_iterative(n)
  (1..n).inject(&:*)
end

def factorial_iterative(n)
  result = 1
  n.times {|index| result *= index+1 }
  result
end

p 6 == factorial_recursive(3)
p 6 != factorial_recursive(4)
p factorial_iterative(3)
p 6 == factorial_iterative(3)
p 6 != factorial_iterative(4)
