class Clock
  def initialize(hour, minute)
    @hour,@minute=hour,minute
    @hour = @hour + @minute/60
    @minute=@minute%60
    @hour=@hour%24
  end

  def self.at(hour, minute)
    @a=Clock.new(hour, minute)
  end

  def to_s
    @hour = '%02d' % @hour
    @minute = '%02d' % @minute
    "#{@hour}:#{@minute}"
  end

  def +(extra)
    Clock.new(@hour, @minute + extra)
  end

  def ==(other)
   to_s == other.to_s
  end
end
