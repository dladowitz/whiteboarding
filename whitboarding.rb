def is_palindrome?(string)
  start_index = 0
  end_index = string.length - 1

  while start_index <= string.length / 2
    while string[start_index] == " "
      start_index += 1
    end

    while string[end_index] == " "
      end_index -= 1
    end

    unless string[start_index] == string[end_index]
      return false
    end

    start_index += 1
    end_index -= 1
  end

  return true
end


puts is_palindrome?("AMA")
puts is_palindrome?("A MA")
puts is_palindrome?("racecar")
puts is_palindrome?("JOHHNY")


def majority_element(array)
  count = {}
  majority_minimum = (array.length / 2)

  array.each do |element|
    if count[element]
      count[element] += 1
       if count[element] > majority_minimum
         puts count
         return element
       end
    else
      count[element] = 1
    end
  end
end

# array = [1,2,3,1,3,1,1,1,2,2,3,3,3,3,3,3,3,3,3,3]
# p majority_element(array)



# W1P1:
#
# Given an array of size n, nd the majority element. The majority element is the
#
# element that appears more than n/2 times.
#
# INSTRUCTIONS FOR INTERVIEWER:
#
# ● Don’t provide the following information unless speci cally asked for:
#
# ○ Time Complexity: O(n)
#
# ○ Space Complexity: O(n)
#
# ○ You may assume that the array is non-empty and the majority
#
# element always exist in the array.
#
# EXAMPLE:
#
# ● Input: [1,2,2]
#
# ● Input: [1,2,3,3,3]
#
# ○ Output: 2
#
# ○ Output: 3
