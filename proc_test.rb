class MyArray
  def initialize
    @elements = []
  end

  def << element
    @elements << element
  end

  def each(proc)
    new_elements = []
    for element in @elements
      new_elements << proc.call(element)
    end

    return new_elements
  end

  def select(proc)
    new_elements = []
    for element in @elements
      new_elements << element if proc.call(element)
    end
  return new_elements
  end

  def inject(proc)
    accumulator = @elements.first
    index = 1

    while index < @elements.length
      accumulator = proc.call(accumulator, @elements[index])
      index += 1
    end

    return accumulator
  end
end


double = proc {|elem| elem * 2}
is_even = proc {|elem| elem % 2 == 0}
is_negative = proc {|elem| elem < 0}
sum = proc {|accumulator, elem| accumulator + elem}
product = proc {|accumulator, elem| accumulator * elem}

my_array = MyArray.new
my_array << 10
my_array << 22
my_array << -30
my_array << 35

p my_array.each double
p my_array.select is_even
p my_array.select is_negative
p my_array.inject sum
p my_array.inject product
