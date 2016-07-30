
class String
  def reverse_sentance
    new_sentance = self
    new_sentance = new_sentance.gsub(".", "")
    new_sentance = new_sentance.split(" ")
    new_sentance = new_sentance.reverse
    new_sentance = new_sentance.join(" ")
    new_sentance << "."

    return new_sentance
  end

  def reverse_paragraph
    new_paragraph = self; reversed_sentances = []

    sentances = new_paragraph.split(".")
    sentances.each { |sentance| reversed_sentances << sentance.reverse_sentance }

    return reversed_sentances.join(" ")
  end
end


puts "====================== Starting Tests ======================"
require 'minitest/spec'
require 'minitest/autorun'

input = "the quick brown fox jumps."
output = "jumps fox brown quick the."

input2 = "the quick brown fox jumps. over the lazy dog."
output2 = "jumps fox brown quick the. dog lazy the over."

describe "#reverse_sentance" do
  it "reverses a sentance, but keep the period in place" do
    assert_equal(output, input.reverse_sentance)
  end
end

describe "#reverse_paragraph" do
  it "reverses multiple sentances" do
    assert_equal(output2, input2.reverse_paragraph)
  end
end
