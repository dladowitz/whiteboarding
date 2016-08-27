def most_frequent(elements)
  largest_frequency = 0
  most_frequent = []

  frequencies = Hash.new(0)
  elements.each do |element|
    frequencies[element] += 1
    largest_frequency = frequencies[element] if largest_frequency < frequencies[element]
  end

  frequencies.each do |element, count|
    if count >= largest_frequency
      most_frequent << element
    end
  end

  most_frequent
end

def frequency_count(elements)
  frequency_count = Hash.new(0)
  elements.each {|element| frequency_count[element] += 1}
  frequency_count
end

p ["red", "black"] == most_frequent(["red", "green", "black", "black", "red"])
p ["red", "black"] != most_frequent(["red", "green", "black", "black", "red", "green"])
p ["red"] == most_frequent(["red", "green",  "black", "red"])
p ["a", "b"] == most_frequent(["a", "b", "b", "a", "d"])

p ({"red" => 2, "black" => 2, "green" => 1} == frequency_count(["red", "green", "black", "black", "red"]))
p frequency_count(["red", "green", "black", "black", "red"])
