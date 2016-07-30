input = "the quick brown fox jumps."
output = "jumps fox brown quick the."

input2 = "the quick brown fox jumps. over the lazy dog."
output2 = "jumps fox brown quick the. dog lazy the over."

def reverse_sentance(input)
  input = input.split(" ").reverse
  input = input.join " "
  input << "."

  return input

end

def reverse_paragraph(input2)
  result = []
  sentances = input2.split(".")
  sentances.each do |sentance|
    result << reverse_sentance(sentance)
  end

  sentances = result.join(" ")
  return sentances
end


# reverse_paragraph(input2)

# output = reverse_with_dot(input)

p output2 == reverse_paragraph(input2)
