class MyLogger
  def self.log(msg)
    log = File.open("log.txt", "a")
    log << "\n#{msg}"
    puts "Logging #{msg}"
    log.close
  end

  private_class_method :new
end

# class MyLogger
#   def initialize
#     @log = File.open("log.txt", "a")
#   end
#
#   @@instance = MyLogger.new
#
#   def self.instance
#     return @@instance
#   end
#
#   def log(msg)
#     @log.puts(msg)
#     puts "Logging #{msg}"
#   end
#
#   private_class_method :new
# end
