class Year
  def self.leap?(input)
    true if input % 400 == 0 || input % 100 != 0 && input % 4 == 0
  end
end
