class FoodChain
  def self.song
    a= [["fly","I don't know why she swallowed the fly. Perhaps she'll die.","I don't know why she swallowed the fly. Perhaps she'll die."],
    ["spider","It wriggled and jiggled and tickled inside her.", "that wriggled and jiggled and tickled inside her"],
    ["bird","How absurd to swallow a bird!",""],
    ["cat","Imagine that, to swallow a cat!",""],
    ["dog","What a hog, to swallow a dog!",""],
    ["goat","Just opened her throat and swallowed a goat!",""],
    ["cow","I don't know how she swallowed a cow!",""],
    ["horse","She's dead, of course!",""],]
    len=7
    str=""
    j=0
    c="I know an old lady who swallowed a "
    b="She swallowed the spider to catch the "
    d="I don't know why she swallowed the fly. Perhaps she'll die."
    str = str + "#{c}#{a[0][0]}.\n#{a[0][1]}\n"  #print first two line
    (1..len-1).each do |i|
      str = str + "\n#{c}#{a[i][0]}.\n#{a[i][1]}"
      j=i
      while j>=1 do
        if j==2
          str = str + "\nShe swallowed the #{a[2][0]} to catch the #{a[1][0]} #{a[1][2]}."
        else
          str = str + "\nShe swallowed the #{a[j][0]} to catch the #{a[j-1][0]}."
        end
        j=j-1
      end
      str = str + "\n#{d}#{a[i][3]}"
      str = str + "\n"
    end
    str = str + "\n#{c}#{a[7][0]}.\n#{a[7][1]}\n"  #print last twp line
    return str
  end
end
