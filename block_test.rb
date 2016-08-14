def block_measure_time &code_block
  start_time = Time.now

  code_block.call

  end_time = Time.now
  puts "Code block took: #{end_time - start_time} seconds."
end

block_measure_time{ 1000000.times{}}
# code = proc { 1000000.times{}}
# measure_time code
