def find_largest(array)
  if array.length <= 2
    return array.max
  else
    mid = (array.length / 2) - 1
    left_array = array[0.. mid]
    right_array = array[mid+1..-1]
    return [find_largest(left_array), find_largest(right_array)].max
  end
end

array = [50, 12, 21, 51, 44, 25, 10, 5, 16, 13]

puts find_largest(array)

def recursive_each(array, index, proc_arg = nil)
  if index < array.length
    proc_arg.call(array[index])

    recursive_each(array, index+1, proc_arg)
  end
end

doubled = []
double = proc {|elem| doubled << elem * 2}
recursive_each(array, 0, double)
p doubled  
