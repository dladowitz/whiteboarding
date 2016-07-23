def numberOfPairs(a, k)
  matching_pairs = [], outer_index = 0
  
  while outer_index < a.length
    inner_index = outer_index + 1

    while inner_index < a.length
      if a[outer_index] + a[inner_index] == k
        matching_pairs = add_pair_to_array(matching_pairs, [a[outer_index], a[inner_index]])
      end
      inner_index += 1
    end

    outer_index += 1
  end

  return matching_pairs
end

def add_pair_to_array(array, new_pair)
  if array.empty?
    return array << new_pair
  else
    array.each do |in_place_pair|
     return array if new_pair.include?(in_place_pair[0]) && new_pair.include?(in_place_pair[1])
    end

    return array << new_pair
  end
end


a = [7, 6, 6, 3, 9, 3, 5, 1]
k = 12

p numberOfPairs(a, k)
