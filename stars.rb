# def is_palindrome?(word)
#   end_index = word.length - 1
#   mid = word.length / end_index
#
#   chars = word.split ""
#   chars.each_with_index do |char, index|
#     unless char == chars[end_index - index]
#       return false
#     end
#   end
#
#   return true
# end

# def is_palindrome?(word)
#   left_index = 0
#   right_index = word.length - 1
#
#   while left_index < right_index
#     return false unless word[left_index] == word[right_index]
#     left_index += 1; right_index -= 1
#   end
#
#   return true
# end

# def is_palindrome?(word)
#   word == word.reverse
# end

def is_palindrome?(word)
  reversed = ""
  word.split("").each {|char| reversed.prepend char}
  return reversed == word
end

p true == is_palindrome?("anna")
p true == is_palindrome?("racecar")
p false == is_palindrome?("david")
p true == is_palindrome?("davad")
p true == is_palindrome?("an na")
