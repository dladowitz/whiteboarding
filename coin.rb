def fizzbuzz
  (1..100).each do |number|
    if number % 3 == 0 && number % 5 == 0
      puts "Fizzing & Buzzing: #{number}"
    elsif number % 3 == 0
      puts "Fizzing: #{number}"
    elsif number % 5 == 0
      puts "Buzzing: #{number}"
    else
      puts number
    end
  end
end

def fizzbuzz2
  (1..100).each do |number|
    result = ""
    result << "Fizz" if number % 3 == 0
    result << "Buzz" if number % 5 == 0
    result << number.to_s if result.empty?
    puts result
  end
end

# fizzbuzz
# fizzbuzz2

def difference_between(array, difference)
  results = []
  array.each do |first_number|
    array.each do |second_number|
      if first_number + difference == second_number
        results << [first_number, second_number]
      end
    end
  end

  p results
end

def better_difference_between(array, difference)
  results = []
  outer_index = 0
  # end_index = array.length -1

  while outer_index < array.length
    inner_index = outer_index + 1
    while inner_index < array.length
      if array[outer_index] + difference == array[inner_index] || array[outer_index] - difference == array[inner_index]
        results << [array[outer_index], array[inner_index]]
      end
      inner_index += 1
    end

    outer_index += 1
  end

  p results
end

better_difference_between([10,5,3,11,16,5], 5)
# difference_between([10,5,3,11,16,5], 5)
