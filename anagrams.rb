def are_anagrams(sets)
  results = {}
  sets.each do |set|
    results[set] = set_is_anagrams(set)
  end

  return results

end

def set_is_anagrams(words)
  words.each_with_index do |word, index|
    inner_index = index + 1
    while inner_index < words.length
      unless words_are_anagrams(word, words[inner_index])
        return false
      end

      inner_index += 1
      puts "inner_index: #{inner_index}"
    end
  end
  return true
end

def words_are_anagrams(word1, word2)
  puts "starting words_are_anagrams"
  word1.length.times do |index|
    if word1.include? word2[index]
      next
    else
      return false
    end
  end

  return true
end


words = [['cat','act','tac'], ['cat','act','bac']]
puts are_anagrams(words)
