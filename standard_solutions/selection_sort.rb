def selection_sort(array)
  current_pointer = 0
  smallest_pointer = current_pointer + 1

  while current_pointer < array.length - 1
    puts "\nCurrent Pointer: #{current_pointer}"
    puts "Current Pointer Val: #{array[current_pointer]}"
    puts "Smallest Pointer: #{smallest_pointer}"
    puts "Smallest Pointer Val: #{array[smallest_pointer]}"
    puts "Array: #{array}"
    found_smaller = false
    smallest_value = array[smallest_pointer]
    smallest_index = smallest_pointer

    while smallest_pointer < array.length
      if array[current_pointer] > array[smallest_pointer]
        if smallest_value > array[smallest_pointer]
          puts "Found smaller, updated to: #{array[smallest_pointer]}"
          smallest_value = array[smallest_pointer]
          smallest_index = smallest_pointer
        end
        found_smaller = true
      end

      smallest_pointer += 1
    end

    array = swap(current_pointer, smallest_index, array) if found_smaller
    sleep 0.5
    current_pointer += 1
    smallest_pointer = current_pointer + 1
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
