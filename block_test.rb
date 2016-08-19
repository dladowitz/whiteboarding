group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
# group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
# group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]

# Complete this as a new Proc
over_4_feet = proc { |height| height >= 4 }

# Change these three so that they use your new over_4_feet Proc
can_ride_1 = group_1.select &over_4_feet
p can_ride_1
# can_ride_2 = group_2.select &over_4_feet
# can_ride_3 = group_3.select &over_4_feet



def do_somewith_with_5
  # puts block.call(num) # yeild == block.call
  puts yield(5)
end
#
double = proc {|num| num * 2}
# #
# # do_somewith_with_5 {|num| num + 10}
do_somewith_with_5 &double
#
#
# def do_somewith_with_num(num)
#   # puts block.call(num) # yeild == block.call
#   puts yield(num)
# end
#
# do_somewith_with_num(3) {|num| num + 10}
# do_somewith_with_num(3, &double)


# def block_test my_block, &block
#   name = "aiko"
#   puts "We're in the method!"
#   my_block.call(name)
#   block.call#(name)
#   puts "We're back in the method!"
#
# end
#
# test_proc = proc { |name| puts ">>> We're in a proc #{name}!" }
# test_lambda = lambda { |name| puts ">>> We're in a lambda #{name}!" }
#
# # block_test { |name| puts ">>> We're in the block #{name}!" }
# # block_test(test_proc) {|name| puts ">>> We're in the block #{name}"}
# block_test(test_lambda) { |name| puts ">>> We're in the block #{name}!"}


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

#
# class Animal
#   SOUNDS = {cat: "Meow, Meow", tiger: "Rowwwwr"}
#   attr_accessor :name, :type
#   def initialize(type)
#     @type = type
#   end
#
#   def send_sound &block
#     sound = SOUNDS[self.type.to_sym]
#     block.call(sound)
#   end
#
#   def format_name &block
#     block.call(self.name)
#   end
#
#   def create_proc(new_sound)
#     proc { puts new_sound }
#   end
# end


# send_to_file =  proc do |message|
#   file = File.open("sound_board.txt", "w")
#   file.write(message)
#   file.write("\n")
#   file.close
# end
#
# send_to_stout = proc {|message| puts message}


# dusty = Animal.new('cat')
# dusty.name = "Dusty"
#
# # dusty.send_sound {|message| puts message}
# #
# # dusty.send_sound do |message|
# #   file = File.open("sound_board.txt", "a")
# #   file.write(message)
# #   file.write("\n")
# #   file.close
# # end
#
# puts dusty.format_name {|name| name.upcase + "!!"}
# dusty.format_name do |name|
#   new_name = []
#   chars = name.split ""
#   chars.each_with_index do |char, index|
#     if (index % 2) == 0
#       new_name << char.downcase
#     else
#       new_name << char.upcase
#     end
#   end
#   puts new_name.join
# end
#
# puts dusty.format_name {|name| name.reverse.downcase}
#
# grow =  dusty.create_proc("Growwwl")
# grow.call
