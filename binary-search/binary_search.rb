class BinarySearch
  def initialize(ar)
    if ar==ar.sort
      @ar=ar
      @lo=0
      @hi=@ar.length
    else
      raise ArgumentError, "not sorted"
    end
  end
  def list
  return @ar
  end
  def middle
    mid = @lo + (@hi - @lo)/2
    return mid
  end
  def search_for(number)
    @lo=0
    @hi=@ar.length
    flag=true
    while @lo <= @hi do
      if @ar[middle] == number
        flag=false
        break
        #return middle
      elsif @ar[middle] < number
        @lo= middle + 1
        next
      else
        @hi= middle - 1
        next
      end
    end
    if flag==true
      raise RuntimeError, "not found"
    else
      middle
    end
  end
end
# # #BinarySearch.new([1,2])
# binary = BinarySearch.new([1, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377])
#  binary.list
#  binary.middle
#  puts binary.search_for(21)
