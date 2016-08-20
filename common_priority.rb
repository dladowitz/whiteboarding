
def common_priority(list1, list2)
  rankings = Hash.new(0)

  list1.each_with_index do |item, index|
    if list2.include? item
      rankings[item] += index+1
    end
  end

  list2.each_with_index do |item, index|
    if list1.include? item
      rankings[item] += index+1
    end
  end

  if rankings.length == 0
    return "no common priority"
  else
    common_item = rankings.sort_by {|item, value| value}.first[0]
  end

end


list1 = ['finance', 'sales', 'engineering']
list2 = ['support', 'finance', 'engineering']
p common_priority(list1, list2)
p 'finance' == common_priority(list1, list2)

list1 = ['sales', 'design']
list2 = ['support', 'finance', 'engineering']
p common_priority(list1, list2)
p 'no common priority' == common_priority(list1, list2)
