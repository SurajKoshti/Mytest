class Pangram
  def self.pangram?(phrase)
    check = true
    if phrase.empty?
      check = false
    else
      phrase = phrase.downcase
      phrase = phrase.split('')
      ('a'..'z').each do |ch|
        check = phrase.include?(ch) ? true : false
        break unless check
      end
    end
    return check
  end
end
