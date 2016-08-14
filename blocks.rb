require 'Date'

# def log_message(proc)
#   puts "Opening File"
#   file  = open('test_file.txt', "w")
#   text = proc.call
#   file.write(text)
#   file.write("\n")
#   file.close
#   puts "Closing File. Sending to message router"
# end

def accident_router type_of_accident
  dayname = Date::ABBR_DAYNAMES[Date.today.wday]
  message = type_of_accident.call
  if dayname == "Sun"
    "YOSAR off. Sending message to local authorities"
    message
  else
    "Sending Message to YOSAR"
    message
  end
end



serious_accident = Proc.new do
  INJURIES = ["head", "neck, leg", "arm", "lungs"]
  injuries = []
  num_of_injuries = rand(1..3)
  num_of_injuries.times {injuries << INJURIES.sample}
  injuries = injuries.uniq.join ", "
  puts "Serious Accident. Send support injury type: #{injuries}"
end


minor_accident = Proc.new do
  puts "Minor accident alert. Just keep an eye out in case things get worse"
end

accident_router serious_accident
accident_router minor_accident
