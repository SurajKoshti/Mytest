class Array
  def accumulate(&block)
    array=self.map(&block)
  end
end
