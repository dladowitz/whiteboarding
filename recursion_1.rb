class Fib
  def self.create_fibinacci_series(n)
    @series = []

    n.times { |num| @series << self.fibinacci(num) }
    p @series
  end

  def self.fibinacci(n)
    if n == 0 || n == 1
      return n
    else
      return fibinacci(n - 2) + fibinacci(n - 1)
    end
  end
end

# Fib.create_fibinacci_series(5)
# Fib.create_fibinacci_series(6)



def iterative_factorial(n)
  result = 1

  (1..n).each do |index|
    result = result * index
    print "#{result}, "
  end

  return "\nFactorial of #{n}: #{result}"
end

puts iterative_factorial(5)
puts iterative_factorial(6)

def iterative_factorial_while(n)
  result = 1
  counter = 1

  while counter <= n
    result = result * counter
    counter += 1
  end

  return result
end

puts iterative_factorial_while(5)











# def print_array_helper(array)
#   index = 0
#   @array = array
#
#   def print_element_helper(index)
#     if index >= @array.length
#       return
#     else
#       puts @array[index]
#       print_element_helper(index + 1)
#     end
#   end
#
#   print_element_helper(index)
#   puts "--------------------\n"
# end
#
# print_array_helper([1, 4, 8, 12])
#
#
# def print_array(array)
#   print_element_outer(0, array)
#
#   puts "++++++++++++++++++\n"
# end
#
# def print_element_outer(index, array)
#   if index >= array.length
#     return
#   else
#     puts array[index]
#     print_element_outer(index + 1, array)
#   end
# end
#
# array = [1, 5, 10, 15]
# print_array(array)
#
#
# def reverse_print(array)
#   reverse_print_traverse(array.length - 1, array)
#   puts "///////////////////////\n"
# end
#
# def reverse_print_traverse(index, array)
#   if index < 0
#     return
#   else
#     puts array[index]
#     reverse_print_traverse(index - 1, array)
#   end
# end
#
# puts reverse_print(array)


# def reverse_string(string)
#     result = ""
#     # result --> ""
#     reverse_string_traverse(string.length-1, string, result)
#     # result --> "olleH"
#     puts "Results is: #{result}"
#     puts "||||||||||||||||||\n\n"
# end
#
# def reverse_string_traverse(index, string, result)
#   if index < 0
#     return
#   else
#     result << string[index]
#     # result --> 'oll'
#     reverse_string_traverse(index - 1, string, result)
#     # result --> 'olleH'
#   end
# end
#
# reverse_string("Hello")
#
#
#
#
# def large
#   first = "hi"
#   puts "First: #{first}"
#   puts "first.object_id: #{first.object_id}"
#   second = "hi"
#   puts "Second: #{second}"
#   puts "second.object_id: #{second.object_id}"
#
#   someFn(first, second)
#
#   puts "First: #{first}"
#   puts "first.object_id: #{first.object_id}"
#   puts "Second: #{second}"
#   puts "second.object_id: #{second.object_id}"
# end
#
# def someFn(this, that)
#   puts "-------someFn----------"
#   puts "\n<<<<<<< this:"
#   puts "this.object_id: #{this.object_id}"
#   this = this + " there"
#   puts "this: #{this}"
#   puts "this.object_id: #{this.object_id}"
#   puts "<<<<<<< this:"
#
#   puts "\n>>>>>>> that:"
#   puts "that.object_id: #{that.object_id}"
#   that << " there"
#   puts "that: #{that}"
#   puts "that.object_id: #{that.object_id}"
#   puts ">>>>>>> that:\n\n"
# end
#
# large
