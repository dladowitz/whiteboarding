class MyLogger
  def initialize
    @log = File.open("log.txt", "a")
  end

  @@instance = MyLogger.new

  def self.instance
    return @@instance
  end

  def log(msg)
    @log.puts(msg)
    puts "Logging #{msg}"
  end

  private_class_method :new
end
