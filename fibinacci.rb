# fibinacci = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]

def fib_iteration(n)
  sequence = [0, 1]
  (2..n).each do |index|
    sequence[index] = sequence[index-2] + sequence[index-1]
  end

  p sequence
  p sequence[n - 1]
end


fib_iteration(9)
