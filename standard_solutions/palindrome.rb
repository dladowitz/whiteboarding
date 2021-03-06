# Fastest. Time complexity is .5n (though technicall n, becuase there are two operations for each loop)
def is_palindrome?(word)
  left_index = 0; right_index = word.length - 1
  while left_index < right_index
    return false unless word[left_index] == word[right_index]
    left_index += 1; right_index -= 1
  end

  true
end

# Easist to read. Time complexity is probably 2n. Not sure how long == takes
def is_palindrome?(word)
  reversed = ""
  word.split("").each {|char| reversed.prepend char}
  reversed == word
end


def find_palindromes(sentance)
  words = sentance.split
  palindromes = words.select { |word| is_palindrome? word }
end


p true == is_palindrome?("anna")
p true == is_palindrome?("racecar")
p false == is_palindrome?("david")
p true == is_palindrome?("davad")
p true == is_palindrome?("an na")

p ["anna", "racecar"] == find_palindromes("Hello anna Lets take out your racecar today")
p ["take", "racecar"] != find_palindromes("Hello anna Lets take out your racecar today")


# # Time complexity is 1.5n
# def is_palindrome?(word)
#   word.split("").each_with_index do |char, index|
#     break if index > (word.length / 2) - 1
#     return false if char != word[-1-index]
#   end
#
#   true
# end


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
