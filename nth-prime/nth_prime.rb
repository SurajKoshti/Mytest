require 'prime'
class Prime
  def  self.nth(input)
    raise ArgumentError  if input == 0
    prime_numbers = Prime.first input
    prime_numbers[input - 1]
    end
end
Prime.nth(6)
