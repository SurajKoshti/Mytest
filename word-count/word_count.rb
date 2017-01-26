class Phrase
  def initialize(input)
    input.gsub!(/,/, ' ')
    @input_array = input.downcase.split(' ')
  end
  def word_count
    counts = Hash.new 0
    @input_array.each do |word|
       word.gsub!(/^+[^0-9A-Za-z]/, '')
       word.gsub!(/[^0-9A-Za-z]+$/, '')
      counts[word] += 1
    end
    counts
  end
end
