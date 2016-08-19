def find_largest(array)
  if array.length <= 1
    return array[0]
  else
    mid = (array.length / 2) - 1
    left_array = array[0..mid]
    right_array = array[(mid+1)..-1]
    return largest = [find_largest(left_array), find_largest(right_array)].max
  end
end



array = [50, 12, 21, 19, 44, 25, 10, 5, 16, 13]

puts find_largest(array)
