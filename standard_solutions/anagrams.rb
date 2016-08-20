
# Time complexity is O(n^2)
def are_anagrams?(word1, word2)
  return false unless word1.length == word2.length
  word1.split("").each {|char| return false unless word2.include? char }

  true
end

# Same time complexity just not using ruby incude? method
def are_anagrams?(word1, word2)
  return false unless word1.length == word2.length

  word1.split("").each do |char1|
    included = false
    word2.split("").each do |char2|
      included = true if char1 == char2
    end
    return false if included == false
  end
  true
end

def find_anagrams(words)
  anagrams = []
  words.each_with_index do |word, index|
    pointer = index + 1
    while pointer < words.length
      if are_anagrams?(word, words[pointer])
        anagrams += [word, words[pointer]]
        break
      end
      pointer += 1
    end
  end

  anagrams.uniq
end



p true == are_anagrams?("dog", "god")
p false == are_anagrams?("god", "good")
p true == are_anagrams?("nana", "anna")
p false == are_anagrams?("sam", "anna")
p false == are_anagrams?("peanuts", "anna")
p ["dog", "god"] == find_anagrams(["dog", "sam", "france", "god"])
p ["dog", "sam"] != find_anagrams(["dog", "sam", "france", "god"])
