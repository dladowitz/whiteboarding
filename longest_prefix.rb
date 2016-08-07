# input: ["abcd", "abc", "abcde", "abxd", "bdc"]
# output: "ab"

def longest_prefix(array)
  longest_pre = array.first
  array.each do |word|
    next if word == array.first

    temp_prefix = ""
    index = 0

    while index < longest_pre.length
      if longest_pre[index] == word[index]
        temp_pre = word[index]
      else
        longest_pre = temp_pre
        break
      end
      index += 1
    end
  end

  puts longest_pre
end

array = ["abcd", "abc", "abcde", "abxd", "bdc"]
longest_prefix(array)
