# def block_measure_time &code_block
#   start_time = Time.now
#
#   code_block.call
#
#   end_time = Time.now
#   puts "Code block took: #{end_time - start_time} seconds."
# end
#
# # block_measure_time { 1000000.times{}}
#
#
# def proc_measure_time data, proc
#   start_time = Time.now
#
#   proc.call(data)
#
#   end_time = Time.now
#   puts "Code block took: #{end_time - start_time} seconds."
# end
#
# code = proc { |loops| loops.times{}}
# proc_measure_time 100000, code
#
#
# def clock animal, &block
#   hours = Time.now.hour % 12
#
#   hours.times do
#     block.call(animal)
#   end
# end
#
# clock('dog'){ |animal| puts "The #{animal} says wake up!"}


class Animal
  SOUNDS = {cat: "Meow, Meow", tiger: "Rowwwwr"}
  attr_accessor :name, :type
  def initialize(type)
    @type = type
  end

  def send_sound &block
    sound = SOUNDS[self.type.to_sym]
    block.call(sound)
  end

  def format_name &block
    block.call(self.name)
  end

  def create_proc(new_sound)
    proc { puts new_sound }
  end
end


# send_to_file =  proc do |message|
#   file = File.open("sound_board.txt", "w")
#   file.write(message)
#   file.write("\n")
#   file.close
# end
#
# send_to_stout = proc {|message| puts message}


dusty = Animal.new('cat')
dusty.name = "Dusty"

# dusty.send_sound {|message| puts message}
#
# dusty.send_sound do |message|
#   file = File.open("sound_board.txt", "a")
#   file.write(message)
#   file.write("\n")
#   file.close
# end

puts dusty.format_name {|name| name.upcase + "!!"}
dusty.format_name do |name|
  new_name = []
  chars = name.split ""
  chars.each_with_index do |char, index|
    if (index % 2) == 0
      new_name << char.downcase
    else
      new_name << char.upcase
    end
  end
  puts new_name.join
end

puts dusty.format_name {|name| name.reverse.downcase}

grow =  dusty.create_proc("Growwwl")
grow.call
