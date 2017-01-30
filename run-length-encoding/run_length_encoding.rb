class RunLengthEncoding
  def self.encode(input)
    input_array = input.split('')
    result = ""
    repeat_element = 1
    input_array.each_with_index do |val, index|
      if input_array[index] == input_array[index + 1]
        repeat_element += 1
      else
        result += (repeat_element == 1 ? "" : repeat_element.to_s) + input_array[index].to_s
        repeat_element = 1
      end
    end
    result
  end
  def self.decode(input)
    input = input.split ('')
    number = ''
    result = ''
    (0...input.length).each do |i|
      if input[i] =~ /^[0-9]+$/
        number += input[i]
      else
        if number.to_i < 2
          result += input[i]
        else
          result += "#{input[i]}" * number.to_i
        end
        number = ''
      end
    end
    result
  end
end
