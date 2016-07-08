def print_array(array)
  index = 0
  @array = array

  def print_element(index)
    if index >= @array.length
      return
    else
      puts @array[index]
      print_element(index + 1)
    end
  end

  print_element(index)
end

array = [1, 5, 10, 15]
print_array(array)
