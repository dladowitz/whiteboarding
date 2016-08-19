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

# puts find_largest(array)

def recursive_each(array, proc_arg, index = 0)
  if index < array.length
    proc_arg.call(array[index])

    recursive_each(array, proc_arg, index + 1)
  end
end

# doubled = []
double = proc {|elem| elem * 2}
# recursive_each(array, double)
# p doubled

def recursive_map(array, proc_arg, index = 0, new_array = [])
  if index < array.length
    proc_arg.call(array[index])
    new_array << proc_arg.call(array[index])

    recursive_map(array, proc_arg, index + 1, new_array)
  else
    return new_array
  end
end

# p recursive_map(array, double)

20
array = [10, 5, 8, 10]
def find_pairs(array, sum)
  matches = []
  index_matches = []

  array.each_with_index do |number1, index1|
    array.each_with_index do |number2, index2|
      if ((number1 + number2) == sum) && (index_matches.length == 0)
        matches << [number1, number2]
        index_matches << [index1, index2]
        break
      elsif ((number1 + number2) == sum)
        break if index_matches.include? [index1, index2]
        break if index_matches.include? [index2, index1]
        matches << [number1, number2]
        index_matches << [index1, index2]
        break
      end
    end
  end

  print matches
  puts " "
  print index_matches
end

find_pairs(array, 15)
