def L(&blk)
  Babushka::LogHelpers.deprecated! '2017-09-01', instead: '`->(){}` (or `lambda{}`)'
  proc(&blk)
end

class Object
  # Return this object's metaclass; i.e. the value of self within a
  # 'class << self' block.
  def metaclass
    Babushka::LogHelpers.deprecated! '2017-09-01', instead: '`class << self; self end`'
    class << self; self end
  end

  # Return self unmodified after logging the output of #inspect, along with
  # the point at which +tapp+ was called.
  def tapp
    Babushka::LogHelpers.deprecated! '2017-09-01'
    tap { STDOUT.puts "#{File.basename caller[2]}: #{self.inspect}" }
  end
end
