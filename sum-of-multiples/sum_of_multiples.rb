class SumOfMultiples
  def initialize(*input)
    @input = input
  end
  def to(number)
    arr=[]
    (0..@input.length-1).each do |i|
      count = @input[i]
      while count < number
        arr.push(count)
        count += @input[i]
      end
    end
    arr.uniq!
    result = 0
    arr.each{|v| result += v }
    result
  end
end
