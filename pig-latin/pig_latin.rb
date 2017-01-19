class PigLatin

  def self.translate(input)
    vowels=["a","e","i","o","u"]
    input = input.split(" ")
    pig_latin_str = []
    input.each do |str|
    case str[0]
    when vowels
      pig_latin_str << str + "ay"
    when "x","y"
      case str[1]
      when "a","e","i","o","u"
        pig_latin_str << consonant(str)
      else
        pig_latin_str << str + "ay"
      end
    else
      pig_latin_str << consonant(str)
    end
  end
  pig_latin_str.join(" ")
  end

  def self.consonant(str)
    until str[0] == "a" || str[0] == "e" || str[0] == "i" || str[0] == "o" || ( str[0] == "u" && ( str[1] != "a" && str[1] != "e" && str[1] != "i" && str[1] != "o" && str[1] != "u" ) )  do
      starting_letter = str[0]
      str[0] = ""
      str = str + starting_letter
    end
    str = str + "ay"
  end

end
