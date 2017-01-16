class Raindrops
  def self.convert(number)
    strings = ''
    if number%3 == 0
      strings = strings +'Pling'
    end
    if number%5 == 0
      strings = strings +'Plang'
    end
    if number%7 == 0
      strings = strings +'Plong'
    end
    if strings == ''
      strings = number.to_s
    end
    return strings
  end
end
