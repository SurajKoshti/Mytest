class Binary
  def self.to_decimal(input)
    if input !~ /[^01]/
      decimal = 0
      input = input.split('').reverse
      (0..input.length-1).each do |i|
        decimal += 2**i if input[i].to_i == 1
      end
    else
      raise ArgumentError
    end
    decimal
  end
end
