 #1 , 1 , 2 , 3 , 5 , 8 , 13 , 21 , 34 , 55 , 89
def fibinacci_recursive(n)
  if n < 2
    return n
  else
    return fibinacci_recursive(n-2) + fibinacci_recursive(n-1)
  end
end

def fibinacci_iterative(n)
  sequence = [0, 1]

  (n-1).times do |index|
    sequence << sequence[-2] + sequence[-1]
  end

  sequence.last
end

p 21 == fibinacci_recursive(8)
# p fibinacci_recursive(8)
p 21 != fibinacci_recursive(9)
p 21 == fibinacci_iterative(8)
# p fibinacci_iterative(8)
p 21 != fibinacci_iterative(9)

# p 21 == fibinacci_recursive_traversal(8)
# p 21 != fibinacci_recursive_traversal(9)
