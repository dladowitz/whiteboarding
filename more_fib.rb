# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34


def fib_iterative(n)
  sequence = []
  counter = 0
  while counter <= n
    if counter < 2
      sequence << counter
    else
      sequence << sequence[-2] + sequence[-1]
    end

    counter += 1
  end

  return sequence[n-1]
end

# p fib_iterative(3)

def fib_recursive(n)
  if n == 1
    return 0
  elsif n == 2
    return 1
  else
    return fib_recursive(n-2) + fib_recursive(n-1)
  end
end

p fib_recursive(9)
