class Hamming
  def self.compute(firstStr, secondStr)
    if firstStr.length != secondStr.length
      raise ArgumentError, "The lengths of the strands must match."
    else
    i, total = 0, 0
    firstStr = firstStr.split('')
    secondStr = secondStr.split('')
    while i < firstStr.length do
      if firstStr[i] != secondStr[i]
        total += 1
      end
      i += 1
    end
    total
    end
  end
end
