require 'byebug'

def selection_sort(array)
  current_pointer = 0
  while current_pointer < array.length - 2 do

    array = swap_smallest(current_pointer, array)
    current_pointer += 1
  end

  array
end

def swap_smallest(subject_index, array)
  test_index = subject_index + 1
  smallest_value = array[test_index]
  smallest_index = test_index

  while test_index < array.length do
    if smallest_value > array[test_index]
      smallest_value = array[test_index]
      smallest_index = test_index
    end

    test_index += 1
  end

  if array[subject_index] > smallest_value
    array = swap(subject_index, smallest_index, array)
  end

  array
end

def swap(index1, index2, array)
  temp = array[index1]
  array[index1] = array[index2]
  array[index2] = temp
  array
end



p [1,2,3,4,5,6,7,8,9,10] == selection_sort([10,9,8,7,6,5,4,3,2,1])
p [1,2,3,4,5,6,7,8,9,10] == selection_sort([1,3,5,7,9,2,4,6,8,10])
