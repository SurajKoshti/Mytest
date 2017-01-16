class Squares
  def initialize(number)
    @number = number
  end
  def square_of_sum
    return ((@number*(@number + 1))/2)**2
  end
  def sum_of_squares
    return (@number*(@number + 1)*(2*@number + 1))/6
  end
  def difference
    return square_of_sum - sum_of_squares
  end
end
