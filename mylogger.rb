# I don't see why a singleton approach is any better
# than just creating a class method. The first thing I see
# is maybe a singleton allows usage of attributes that continue on
# and this avoids the need for a single row database table
require 'singleton'

class MyLogger
  include Singleton

  def initialize
    @log = File.open("log.txt", "a")
  end

  def log(msg)
    @log << "\n#{msg}"
    puts "Logging #{msg}"
  end
end

# class MyLogger
#   def self.log(msg)
#     log = File.open("log.txt", "a")
#     log << "\n#{msg}"
#     puts "Logging #{msg}"
#     log.close
#   end
#
#   private_class_method :new
# end

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
