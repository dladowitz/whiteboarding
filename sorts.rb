require 'pry'
array = [10,5,2,6,1,11,21,13]


def insertion_sort(numbers)
  puts "Length: #{numbers.length}"
  index = 0
  puts index <= numbers.length

  binding.pry
  while index <= (numbers.length)
    numbers = sort_and_shuffle(numbers, index)
    index += 1
  end


  print numbers
end

def sort_and_shuffle(array, index)
  key = array[index]

  while index >= 0
    if index == 0
      array[index] = key
    elsif array[index] > array[index - 1]
      array[index] = array[index - 1]
      break
    else
      array[index] = key
      break
    end

    index -= 1
  end
end


insertion_sort(array)
