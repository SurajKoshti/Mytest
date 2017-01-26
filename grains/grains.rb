class Grains
  def self.total
    2 ** 64 - 1
  end
  def self.square(input)
    raise ArgumentError if input <= 0 || input > 64
      2 ** (input - 1)
  end
end
