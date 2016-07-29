# fibinacci = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]

def fib_iteration(n)
  sequence = [0, 1]
  (2..n).each do |index|
    sequence[index] = sequence[index-2] + sequence[index-1]
  end

  p sequence
  p sequence[n - 1]
end

def fib_recursion(n)
  @sequence = [0, 1]

  (2..n).each do |index|
    build_sequence(index)
  end

  p @sequence
  p @sequence[n -1]
end

def build_sequence(index)
  if index < 2
    return index
  else
    @sequence[index] = build_sequence(index - 2) + build_sequence(index - 1)
  end
end

def fib_recursion_single(n)
  if n < 2
    return n
  else
    result = fib_recursion_single = fib_recursion_single(n -2) + fib_recursion_single(n-1)
  end

  result
end


# fib_iteration(9)
# fib_recursion(9)
p fib_recursion_single(9)
