array = [2,9,8,4,7,9,10]

def longest_seq(array)
  longest = 0

  array.each_with_index do |number, index|
    if longest >= array.length - index
      puts "Ending Early"
      break
    end
    inner_index = index + 1
    temp_max = 1

    while inner_index < array.length
      if array[inner_index] > array[index]
        temp_max += 1
        longest = temp_max if temp_max > longest
      else
        break
      end

      inner_index += 1; index += 1
    end
  end

  puts "Longest Increasing Sequence is: #{longest}"
end


longest_seq(array)
